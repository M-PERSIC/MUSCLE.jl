"""
$(TYPEDSIGNATURES)

Report miscellaneous information about the MSAs stored in ensemble FASTA (EFA) format. 
"""
function efastats(input::String, log::String)
    run(`$(muscle()) -efastats $(input) -log $(output)`)
end

"""
$(TYPEDSIGNATURES)

Create one FASTA file for every alignment in an ensemble FASTA (EFA) file. By default, 
the output filename is the label for the replicate. The prefix and suffix options can be used to specify a 
fixed prefix or suffix added to the label to make the output filenames. 
"""
function efa_explode(input::String, prefix::String, suffix::String)
    run(`$(muscle()) -efa_explode $(input) -prefix $(prefix) -suffix $(suffix)`)
end

"""
$(TYPEDSIGNATURES)

Create one ensemble FASTA (EFA) file from one or more FASTA files. Input filenames or pathnames are 
specified in the text file fasta_filenames.txt, one per line. 
"""
fa2efa(input::String, output::String) =
    run(`$(muscle()) -fa2efa $(input) -output $(output)`);

"""
Execute the $(FUNCTIONNAME) command with a list of `FASTX.FASTA` records similar to handling multiple .fa files
"""
function fa2efa(input::Vector{Vector{FASTA.Record}}, output::String)
    fasta_filename = mktemp()[1]
    for records in input
        fasta_path = mktemp()[1]
        open(FASTAWriter, fasta_path) do writer
            for record in records
                write(writer, record)
            end
        end
        open(fasta_filename, "w") do io
            write(io, fasta_path)
        end
    end
    fa2efa(fasta_filename, output)
end

"""
$(TYPEDSIGNATURES)

Execute the fa2efa command with a list of `FASTX.FASTA` records similar to handling a single .fa file
"""
fa2efa(input::Vector{FASTA.Record}, output::String) = fa2efa([input], output)

"""
$(TYPEDSIGNATURES)

Execute the fa2efa command with a list of `BioSequences.LongSequence` sequences
"""
function fa2efa(input::Vector{LongSequence}, output::String; namelength = 4)
    records = input .|> seq -> FASTA.Record(randstring(['a':'z';], namelength), seq)
    fa2efa(records, output)
end

"""
$(TYPEDSIGNATURES)

Calculate the dispersion of an ensemble. 
"""
function disperse(input::String, log::String)
    run(`$(muscle()) -disperse $(input) -log $(log)`)
end

"""
$(TYPEDSIGNATURES)

Add two sequences of digits to each MSA replicates in an ensemble. 
The digits specify column confidence values to two decimal places. The sequence labels are `_conf_` and `_conf_2`. 
In a given column, _conf_ is the first decimal place and `_conf_2` is the second decimal place, so e.g. 73 means 0.73. 
A confidence of 1.0 is indicated as ++. 
"""
function addconfseq(input::String, output::String)
    run(`$(muscle()) -addconfseq $(input) -output $(output)`)
end

"""
$(TYPEDSIGNATURES)

Calculate letter confidence values. Output is in FASTA format where each letter is replaced by a letter confidence value 0..9.

See also the `addconfseq` command which generates column confidence values. 
"""
function letterconf(input::String, ref::String, output::String)
    run(`$(muscle()) -letterconf $(input) -ref $(ref) -output $(output)`)
end

"""
$(TYPEDSIGNATURES)

Extract the MSA with highest column confidence from an ensemble. 
"""
function maxcc(input::String, output::String)
    run(`$(muscle()) -maxcc $(input) -output $(output)`)
end

"""
$(TYPEDSIGNATURES)

Create a resampled ensemble from an existing ensemble (usually a diversified ensemble). 

If the output filename has a @, then one FASTA file is generated for each replicate where @ is replaced by the replicate 
name, e.g. resample.43, otherwise all replicates are written to one EFA file.

Typically, you will want to make one tree from each MSA in the resampled ensemble. To get separate FASTA files suitable 
for input to tree estimation software, you can use the efa_explode command 
"""
function resample(
    input::String,
    output::String,
    replicates::Int = 100,
    minconf::Float64 = 0.5,
    gapfract::Float64 = 0.5,
)
    run(
        `$(muscle()) -resample $(input) -output $(output) -minconf $(minconf) -replicates $(replicates) -gapfract $(gapfract)`,
    )
end

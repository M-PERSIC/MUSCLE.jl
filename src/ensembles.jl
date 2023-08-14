"""
"""
function efastats() 
end

"""
"""
function efa_explode() end

"""

$(TYPEDSIGNATURES)

The $(FUNCTIONNAME) command creates one ensemble FASTA (EFA) file from one or more FASTA files. Input filenames or pathnames are 
specified in the text file fasta_filenames.txt, one per line. 
"""
fa2efa(input::String, output::String) = run(`$(muscle()) -fa2efa $(input) -output $(output)`);

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
Execute the $(FUNCTIONNAME) command with a list of `FASTX.FASTA` records similar to handling a single .fa file
"""
fa2efa(input::Vector{FASTA.Record}, output::String) = fa2efa([input], output)

"""
Execute the $(FUNCTIONNAME) command with a list of `BioSequences.LongSequence` sequences
"""
function fa2efa(input::Vector{LongSequence}, output::String; namelength = 4)
    records = input .|> seq -> FASTA.Record(randstring(['a':'z';], namelength), seq)
    fa2efa(records, output)
end

"""
"""
function disperse() end

"""
"""
function super5() end

"""
"""
function addconfseq() end

"""
"""
function letterconf() end

"""
"""
function maxcc() end

"""
"""
function resample() end

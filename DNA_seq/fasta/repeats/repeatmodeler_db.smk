rule repeatmodeler_db:
    input:
        "data/genome_assembly/{sample}.fa"
    output:
        "data/genome_assembly/{sample}.db.nhr"
    shell:
        "BuildDatabase -name {wildcards.species}.db {input}" # where to find the program in a way that is general. For example, if we import from Uppmax, it won't be general.
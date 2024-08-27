rule repeatmodeler:
    input:
        "data/genome_assembly/{sample}.db.nhr"
    output:
        directory("result/repeat_modeler/{sample}/RM_*")
    shell:
        """
        output_dir=result/repeat_modeler/{wildcards.sample}
        cd $output_dir
        RepeatModeler -database {input.db} -threads {params.cores} -LTRStruct
        """
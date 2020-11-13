# compiles blech and copies generated files to the
# current dir (for arduino), renaming includes appropriately
project_name=Digital_Inputs_2
all:
	blechc ${project_name}.blc
	cp blech/${project_name}.* .
	sed -i "s|blech/${project_name}.h|${project_name}.h|g" ${project_name}.c

#!/bin/bash
# Copy receptor files to use for each ligand with grad.sh (AEScore)

input_dir="../data/tnks2"

output_dir="${input_dir}/dummy_recfiles"
mkdir -p "$output_dir"

existing_file="4ui5-prepared-nhm.pdb"

# Loop over .sdf files in the input directory
for file in "$input_dir"/*ligand*.sdf; do

    filename=$(basename "$file" .sdf)
    new_filename="${filename//ligand/receptor}.pdb"
    echo "Copying $existing_file to $new_filename"
    cp "$input_dir/$existing_file" "$output_dir/$new_filename"

done

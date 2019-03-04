cd election-model
git_hash=$(git rev-parse HEAD)
cd ..

timestamp=$(date +'%m-%d-%Y-%R')

echo "Uploading results to: " s3://election-model-output/$git_hash/$timestamp

aws s3 cp --recursive output/ s3://election-model-output/$git_hash/$timestamp
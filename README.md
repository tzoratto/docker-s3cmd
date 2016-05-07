# S3cmd

This Docker image contains the S3cmd tool. HTTPS is activated by default.

***

## How to use

```bash
docker run --rm -e AWS_ACCESS_KEY=myaccesskey -e AWS_SECRET_KEY=mysecretkey -v /my/path:/root/s3cmd tzoratto/s3cmd ls s3://[BUCKET] 
```

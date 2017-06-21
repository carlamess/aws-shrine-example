# README
1. `bundle install`
2. Setup an Amazon S3 bucket named `aws-shrine-upload`
3. Setup an IAM user on the S3 bucket above with the following in-line policy:
```
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Stmt1497455010000",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:PutObjectAcl",
                "s3:DeleteObject"
            ],
            "Resource": [
                "arn:aws:s3:::aws-shrine-upload/*"
            ]
        }
    ]
}
```
4. Fire up the rails server and visit `localhost:3000` and start uploading via the form!

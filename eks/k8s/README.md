# Required Environment Variables
The following environment variables are required:

1. `AWS_REGION`: The AWS region where your services are hosted.
   - Example: `us-west-2`
   - Description: This should match the region where your AWS resources, like Route 53, are located.

2. `AWS_ACCOUNT_ID`: Your AWS account ID.
   - Example: `123456789012`
   - Description: This is your unique AWS account ID, required for various AWS service roles.

3. `DNS_ZONE`: The hosted zone ID in AWS Route 53.
   - Example: `Z3P5QSUBK4POTI`
   - Description: This is the ID of the DNS zone in Route 53 that will be used for DNS challenges.

4. `CLUSTER_NAME`: The name of your EKS cluster
   - Example: `my-cluster`
   - Description: The main domain name that your cluster will serve. Wildcard domains can also be used.

5. `CLUSTER_DOMAIN`: The domain name for your Kubernetes cluster.
   - Example: `mycluster.example.com`
   - Description: The main domain name that your cluster will serve. Wildcard domains can also be used.

6. `PROMETHEUS_AUTH`: Basic authentication credentials for Prometheus, encoded in base64.
   - Example: `dXNlcjokYXByMSRrbUJ6Tm0ybyRDT3NuR3pFYkg3aGxPWGNja3VqQUowCgo=` (represents "user:password")
   - Description: Credentials for securing Prometheus, encoded in base64. Format should be in htpassword.


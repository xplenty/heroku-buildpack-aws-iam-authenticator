Heroku buildpack: AWS IAM Authenticator for Kubernetes
=========================

This is a [Heroku buildpack](http://devcenter.heroku.com/articles/buildpacks) that
allows one to run the [AWS IAM Authenticator for Kubernetes](https://github.com/kubernetes-sigs/aws-iam-authenticator) tool in a dyno alongside application code to use AWS IAM credentials to authenticate to an [Amazon EKS](https://aws.amazon.com/eks) Kubernetes cluster.


Usage
-----

Example usage:

    $ heroku buildpacks:add --index 1 https://github.com/xplenty/heroku-buildpack-aws-iam-authenticator

    $ git push heroku master
    ...

    remote: -----> aws-iam-authenticator app detected
    remote: === Fetching and vendoring AWS IAM Authenticator for Kubernetes into slug
    remote: === Installing profile.d script
    remote: === AWS IAM Authenticator for Kubernetes installation done
    ...

    $ heroku run 'aws-iam-authenticator token -i <eks-cluster>'
    {"kind":"ExecCredential","apiVersion":"client.authentication.k8s.io/v1alpha1","spec":{},"status":{"token":"some-token"}}

    
The `xplenty/aws-iam-authenticator` from the [Buildpack Registry](https://devcenter.heroku.com/articles/buildpack-registry) contains the latest stable version of the buildpack. To use the edge version of the buildpack (i.e. the source code in this repository) run this command instead:

    $ heroku buildpacks:add --index 1 https://github.com/xplenty/heroku-buildpack-aws-iam-authenticator


#!/bin/sh
set -ex

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testAwsIamAuthenticatorExist()
{
  compile
  assertCapturedSuccess
  #assertFileMD5 "bca743e1573a4fee2576365a180dfe97" ${BUILD_DIR}/.aws-iam-authenticator/aws-iam-authenticator
}

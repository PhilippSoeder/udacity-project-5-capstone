[![CircleCI](https://circleci.com/gh/PhilippSoeder/udacity-project-5-capstone/tree/master.svg?style=svg)](https://circleci.com/gh/PhilippSoeder/udacity-project-5-capstone/tree/master)

# Capstone project Udacity AWS Cloud DevOps Engineer Nanodegree Program Philipp Söder

This is the capstone project for the Udacity AWS Cloud DevOps Engineer Nanodegree Program. With this project I have applyed the skills and knowledge which were developed throughout the program. These include:
* Working in AWS
* Using Circle CI to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines

The resutlting CircleCI pipeline (you can find the configuration in `.circleci/config.yml`) consists of the following steps:
* lint the python application `app.py`
* security check the python application `app.py`
* create and configure the infrastructure for the Kubernetes cluster with cloudformation (you can find the cloudformation script in `.circleci/ansible/files/k8s.yml`) and ansible (you can find the ansible playbook in `.circleci/ansible/configure-server.yml`)
* create and upload a docker image of `app.py` to Dockerhub
* Deploy the docker image with ansible (you can find the ansible playbook in `.circleci/ansible/deploy-app.yml`) to the Kubernetes cluster (you can find the deployment and service configuration in `.circleci/ansible/roles/deploy-app/file/capstone.yml`)
* smoke test the application by curling the enpoint

The application `app.py` does return 'Hello! This is Philipp Söder's capstone project for the Udacity AWS Cloud DevOps Engineer Nanodegree Program.' when calling the endpoint <http://ec2-52-26-14-249.us-west-2.compute.amazonaws.com:30000>.

## Steps that need to be done to run this project

To run this project on your own, you need to follow these steps:
1. Clone that repo
2. Create an account at [AWS](https://aws.amazon.com/)
3. Create an AWS IAM user with administrator permissions and download credentials
4. Create a SSH key `udacity` in AWS console for accessing ec2 instance
5. Create an account at [Dockerhub](https://hub.docker.com)
6. Create a Dockerhub access token
7. Get a token at [Memstash](https://memstash.io)
8. Create an account at [CircleCI](https://circleci.com)
9. Add project to CircleCI
10. Configure the following environment variables
  * `AWS_ACCESS_KEY_ID`
  * `AWS_DEFAULT_REGION`
  * `AWS_SECRET_ACCESS_KEY`
  * `DOCKER_PASSWORD`
  * `DOCKER_LOGIN`
  * `MEMSTASH_TOKEN`
11. Add SSH key to CircleCI via website
12. Run pipeline

## Links & Resources

* [Udacity AWS Cloud DevOps Engineer Nanodegree Program](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991)
* [CircleCI Documentation](https://circleci.com/docs/)
* [Kubernetes Documentation](https://kubernetes.io/docs/home/)
* [AWS Documentation](https://docs.aws.amazon.com)
* [Docker Documentation](https://docs.docker.com)
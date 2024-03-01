FROM public.ecr.aws/lambda/python:3.11.2023.12.05.16-x86_64
WORKDIR /
RUN apt update && apt -y install curl git wget
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]

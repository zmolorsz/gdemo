FROM gcr.io/deeplearning-platform-release/tf2-cpu.2-6:latest
WORKDIR /
RUN apt update && apt -y install wget curl
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]

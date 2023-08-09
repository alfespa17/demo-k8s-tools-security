FROM gitpod/workspace-full

USER gitpod

RUN yarn global add snyk 
RUN pip install checkov 
RUN go install golang.stackrox.io/kube-linter/cmd/kube-linter@v0.6.4
# RUN curl -L https://github.com/zegl/kube-score/releases/download/v1.17.0/kube-score_1.17.0_linux_amd64.tar.gz -o kube-score.tar.gz && tar -xvzf kube-score.tar.gz && cp kube-score /home/gitpod/.local/bin


# act
## secret
```bash
act --pull=false -W .github/workflows/terraform_plan.yml --secret-file act/sa_credential
```

事前に `~/.actrc` に以下を設定すると幸せになれる  
```bash
-P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest
```

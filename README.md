# infra
## terraform init
terraform init  

```bash
# direnv を有効化
direnv allow

# init
terraform init \
-backend-config="bucket=${TF_VAR_BUCKET_NAME}"
```

## act による GitHub Actions の検証
### ジョブ名を指定して実行
```bash
# test ワークフローの plan ジョブを指定
act --pull=false --secret-file .env -j plan
```

### ワークフローを指定して実行
```bash
# test ワークフローを指定
act --pull=false --secret-file .env -W .github/workflows/test.yml
```

### Docker Hub ではなく ghcr.io から image を参照する
Docker Hub はレートリミットが厳しいので ghcr.io を使う  
`~/.actrc` に以下を設定する  

ghcr.io には予めログインしておく  
```bash
-P ubuntu-latest=ghcr.io/catthehacker/ubuntu:act-latest
```

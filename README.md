# study
박태환의 스터디 github


## 2020.06.27
- aws lambda 스터디

**Create Lambda on terminal**

```bash
aws lambda create-function --function-name helloworld \
--zip-file fileb://function.zip --handler index.handler \
--runtime nodejs12.x --role {your-asn}
```

- `--function-name`: 람다 함수 이름
- `--zip-file`: 실행 파일이 들어간 압축 파일
- `--handler`: 실행할 핸들러 파일. 여기서는 index.js에서 export된 handler가 실행 된다.
- `--runtime`: 실행될 언어 및 버전
- `--role`: 람다 함수에 사용될 권한

Run Lambda on terminal

```bash
aws lambda invoke --function-name helloworld --log-type Tail \
--payload '{"key1":"value1", "key2":"value2","key3":"value3"}' \
outputfile.txt
```
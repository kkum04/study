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

### Serverless framework

**설치**

`npm install -g serverless`

**설치 확인**

`serverless --version OR sls --version`

**생성**

`sls create --template aws-nodejs --path first-lambda`

생성 가능한 템블릿 확인

`sls create --help`

**생성된 파일**

- .gitignore
- handler.js: 실행할 소스 코드
- serverless.yml: 서버리스의 배포 및 각종 설정 파일

### **API 게이트웨이 연결하고 배포하기**

serverless.yml 파일의 `events` 아래에 설정

```yaml
functions:
	hello:
		handler: handler.hello
		events:
			- http:
				path: /
				method: get
```

**배포**

`sls deploy`

위 명령어는 서비스 전체를 배포한다.

**함수만 배포**

`sls deploy function -f hello`
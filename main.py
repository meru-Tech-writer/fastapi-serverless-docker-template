from fastapi import FastAPI
from mangum import Mangum

app= FastAPI(
    title="Serverless FastAPI Demo",
    description="Docker環境で開発し、AWS Lambdaにデプロイするデモアプリ"
)

@app.get("/")
def read_root():
    return {"message": "Hello, Serverless FastAPI!"}

@app.get("/health")
def health_check():
    return {"status": "ok"}

handler = Mangum(app)
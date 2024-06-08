# Deploy FastAPI to Azure App Service

## Steps

1. Run bicep file to create Azure services
2. In Azure portal, find the app service instance and link the GitHub repository
3. Set the startup command to `gunicorn -w 2 -k uvicorn.workers.UvicornWorker app:app`

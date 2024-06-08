# Deploy FastAPI to Azure App Service

## Steps

1. Run bicep file to create Azure services
2. In Azure portal, find the app service instance and link the GitHub repository

## Troubleshooting

- Check GitHub actions deploy
- Make sure the startup command is set to `gunicorn -w 2 -k uvicorn.workers.UvicornWorker app:app`
- Check Log Stream

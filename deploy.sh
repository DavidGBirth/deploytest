echo "Switching to branch deploy"
git checkout master

echo "Building app..."
npm run build

echo "Deploying files to server..."
scp -r dist/* ludista@45.76.10.203:/var/www/45.76.10.203/

echo "Done!"

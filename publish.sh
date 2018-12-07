MSG=$(date +%Y-%m-%d' '%H:%M)
hugo
cd publish/
git add .
git commit -m "$MSG"
git push
URL="https://api.telegram.org/bot8066465682:AAHzHPCmEKwo-I7g9FSvRKnv764mnB3BtY0/sendMessage"
TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0ASTATUS+$CI_JOB_STATUS%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s -d "chat_id=372112023&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null

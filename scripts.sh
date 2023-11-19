# Add a 'OPENAIKEY' which contains your key to your file
function gpt {
    GPT=$(curl https://api.openai.com/v1/chat/completions -s \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $OPENAI_API_KEY" \
    -d '{
        "model": "gpt-3.5-turbo",
        "messages": [{"role": "user", "content": "'$1'"}],
        "temperature": 0.7
    }')
    CONTENT=$(jq '.choices[0].message.content' <<< $GPT)
    echo ${CONTENT:1:-1}
}


function gpt_csharp {
    CONTENT="Write me a C# class named '$1': $2"
    hey_gpt "$CONTENT" >> "$1.cs"
}

#! /bin/bash

read -p "패키지 이름을 입력해주세요. 👉 " name
read -r -p "패키지 설명을 입력해주세요. 👉 " description

trimmedDescription="${description// /_}"

useReact="React_사용"
notUseReact="React_미사용"

PS3='패키지 옵션을 선택해주세요  👉 '
select option in $useReact $notUseReact
  do
    if [ $option == $useReact ]
      then 
        npx hygen package-with-react new --name $name --description $trimmedDescription
        yarn
        break
    elif [ $option == $notUseReact ]
      then 
        npx hygen package-without-react new --name $name --description $trimmedDescription
        yarn
        break
    else
        echo "옵션이 잘못 선택되었습니다"
        break
    fi
  done
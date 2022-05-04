## Solidity 처음 시작시 license와 pragma 나오게 하는 스니펫

1. VSCode에서 F1을 누르고 snippets 입력

2. Solidity 선택

3. 그러면 아래 코드와 같은 json파일이 뜬다.

4. 주석 밑의 코드를 복붙해 사용하면 됨.

### 뭐 찾아봐도 없길래 걍 내가 만듦. 보너스로 public, private 스니펫도 만들었음



---



{

	// Place your snippets for solidity here. Each snippet is defined under a snippet name and has a prefix, body and 
	// description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
	// same ids are connected.
	// Example:
	// "Print to console": {
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// }


	 "Solidity start": {
	 	"prefix": "solidity",
	 	"body": [
	 		"// SPDX-License-Identifier: GPL-3.0",
			 "",
			 "pragma solidity >=0.8.0;",
			 "",
			 "",
			 ""
	 	],
	 	"description": "Solidity start"
	 }

	 
}
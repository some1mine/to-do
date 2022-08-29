<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>to-do-list</title>
    </head>
    <body style="display: flex; justify-content: center; align-items: center; flex-direction: column">
        <h1>할 일 목록</h1>
        <button onclick="promptInput()">+</button>
    </body>
</html>

<script>
    function promptInput() {
        let item = prompt("할 일을 입력해주세요");
        if(item) {
            let liTag = document.createElement('p');
            liTag.clickCount = 0;
            liTag.innerHTML = item; liTag.addEventListener("click", function (e) {
                this.style.textDecoration = "line-through";
                if(liTag.clickCount === 0) liTag.clickCount++;
                else this.remove();
            });
            document.body.append(liTag);
        }
    }
</script>
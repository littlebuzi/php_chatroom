<?php
    header('content-type:text/html;charset=utf-8');
    session_start();
    $userId = $_SESSION['info']['Id'];
    // 1.接受用户post的方式传递过来的 聊天内容
    $messageContent = $_POST['messageContent'];
    // 2.引入工具
    include_once "./Tools/phpTools.php";
    // 3.把这个聊天内容插入到chat_message数据表中
    $sql = "insert into chat_message(user_id,content) values('$userId','$messageContent')";
    // 4.执行sql语句
    $arr = mysqli_excute_zsg($sql);
    var_dump($arr);
    if($arr > 0){
        header("location:./chat.php");
    }else{
        echo "发送失败";
    }
?>
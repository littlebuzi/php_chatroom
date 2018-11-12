<?php
  /* 
  登录成功后会自动跳转到这个页面
  */
  header("content-type:text/html;charset=utf-8");
  // 开启session
  session_start();
  if(!isset($_SESSION['info'])){
    // 打回登录页面
    header('location:./login.html');
    return false;
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <style>
    html,
    body {
      height: 100%;
      box-sizing: border-box;
    }

    body {
      padding: 10px;
      margin: 0;
      /* padding: 20px; */
      background-color: #e7e7e7;
      display: flex;
      flex-direction: column;
    }

    .clearfix::before,
    .clearfix::after {
      content: '';
      visibility: hidden;
      clear: both;
      line-height: 0;
      height: 0;
      display: block;
    }

    .clearfix {
      zoom: 1;
    }

    .f_l {
      float: left;
    }

    .f_r {
      float: right;
    }

    .container {
      margin: 20px auto 0;
      width: 100%;
      min-width: 600px;
      flex: 1;
      display: flex;
      flex-direction: column;
      background-color: white;
      border: 1px solid skyblue;
      border-radius: 10px;
    }

    .message {
      border-bottom: 1px solid skyblue;
      /* height: 400px; */
      flex: 1;
      overflow-y: scroll;
      padding: 20px;
      box-sizing: border-box;
      transition: all 2s;
    }

    .control {
      height: 100px;
      display: flex;
      padding-left: 50px;
      padding-right: 50px;
    }

    .inputBox {
      height: 60px;
      margin-top: 20px;
      border-radius: 6px;
      outline: none;
      padding: 0;
      box-sizing: border-box;
      /* width: 500px; */
      flex: 1;
      font-size: 30px;
      box-shadow: 0 0 3px gray;
      border: 1px solid #ccc;
      transition: all .2s;
      padding-left: 10px;
    }

    .inputBox:focus {
      border-color: skyblue;
      box-shadow: 0 0 3px skyblue;
    }

    .sendButton {
      height: 70px;
      margin-top: 15px;
      margin-left: 20px;
      background-color: yellowgreen;
      width: 150px;
      border: none;
      outline: none;
      border-radius: 10px;
      color: white;
      font-size: 40px;
      font-family: '微软雅黑';
      cursor: pointer;
    }

    .message>div>a {
      text-decoration: none;
      width: 50px;
      height: 50px;
      border-radius: 50%;
      background-color: skyblue;
      text-align: center;
      line-height: 50px;
      color: white;
      font-size: 25px;
      font-weight: 700;
      font-family: '微软雅黑';
    }

    .message>.left>a {
      background-color: hotpink;
    }

    a>img {
      width: 100%;
      height: 100%;
    }

    .message>.right>a {
      background-color: yellowgreen;
    }

    .message>div {
      padding: 10px 0;
    }

    .message>div>p {
      max-width: 600px;
      min-height: 28px;
      margin: 0 10px;
      padding: 10px 10px;
      background-color: #ccc;
      border-radius: 10px;
      word-break: break-all;
      position: relative;
      line-height: 28px;
      font-weight: 400;
      font-family: '微软雅黑';
      color: white;
      font-size: 20px;
    }

    .message>.left>p {
      background-color: skyblue;
    }

    .message>.left>p::before {
      content: '';
      position: absolute;
      border-top: 6px solid transparent;
      border-bottom: 6px solid transparent;
      border-right: 6px solid skyblue;
      left: -5px;
      top: 15px;
    }

    .message>.right>p {
      color: black;
    }

    .message>.right>p::before {
      content: '';
      position: absolute;
      border-top: 6px solid transparent;
      border-bottom: 6px solid transparent;
      border-left: 6px solid #ccc;
      right: -6px;
      top: 15px;
    }

    h2 {
      margin: 0;
      padding-bottom: 5px;
      font-family: '微软雅黑';
    }

    .right h2 {
      text-align: right;
    }

    .user a {
      font-weight: 700;
      color: black;
    }

    .f_r a {
      font-size: 12px;
      text-decoration: none;
      border-radius: 5px;
      padding: 3px;
      background-image: linear-gradient(to bottom, #d9534f 0, #c12e2a 100%);
      color: white;
    }

    .f_l a{
      text-decoration:none;
      font-size:14px;
      color:black;
      margin-left:20px;
    }
    .img{
      width:72px;
      height:72px;
    }
  </style>
</head>

<body>
<div class="title">
    <h1 class="f_l">聊天室<a href="./allUser.php">所有用户</a></h1>
    <div class="user f_r">
      <h2 class=""><?php echo $_SESSION['info']['userName']?></h2>
      <img class="img" src="./images/icon/<?php echo $_SESSION['info']['userIcon']?>" alt="">
      <a href="dologout.php">登出</a>
    </div>
    
  </div>
  <div class="container">
    <!-- 聊天框 分为左右 左边是别人说的 右边是登录的人说的话 -->
    <div class="message">
      <?php
        // 1.引入工具
        include_once "./Tools/phpTools.php";
        // 2.准备sql语句
        $sql = "select m.Id,m.user_id,m.content,u.userName,u.userIcon  from  chat_message m inner join  chat_user u on m.user_id = u.Id where isDelete = 'no' order by m.Id asc";
        $arr = mysqli_excute_select($sql);
        // var_dump($arr);
        // session_start();
        // var_dump($_SESSION['info']);
        // 3.这时候要判断左右两个聊天框的内容 如何判断
        for($i=0;$i<count($arr);$i++):
          // 判断当前这个遍历出来得userName是不是这个登录的人
          // 这部分div 使用 for 循环生成多个 div
          if($arr[$i]['userName'] != $_SESSION['info']['userName']):
      ?>
          <div class="left clearfix">
            <h2><?php echo $arr[$i]['userName']?></h2>
            <a href="#" class='f_l'>
              <img src="./images/icon/<?php echo $arr[$i]['userIcon']?>" alt="">
            </a>
            <p class='f_l'><?php echo $arr[$i]['content']?>
            </p>
          </div>
        <?php else:?>
          <div class="right clearfix">
            <h2><?php echo $_SESSION['info']['userName']?></h2>
            <a href="#" class='f_r'>
              <img src="./images/icon/<?php echo $_SESSION['info']['userIcon']?>" alt="">
            </a>
            <p class='f_r'><?php echo $arr[$i]['content']?>
            <a class="btn btn-default" href="./doCallback.php?msgId=<?php echo $arr[$i]['Id']?>">撤回</a>
            </p>
          </div>
        <?php endif;?>
      <?php endfor;?>
    </div>
    <form action="./doSendMessage.php" method="POST">
      <div class="control">
        <input type="text" name="messageContent" class='inputBox f_l'>
        <input type="submit"  class='sendButton f_r' value='发 送'>
      </div>
    </form>
  </div>
</body>

</html>
<!-- 导入JQ -->
<script src="./js/jquery.min-1.72.js"></script>
<script>
  $(function(){
    // 让聊天始终显示最新消息，要给当前的聊天窗口message设置一个scrollTop

    // 声明一个变量，记录message下面的所有子div的高度之和
    var totalHeight = 0;
    // 应该给message这个div下面的所有子div的高度之和
    $('.message>div').each(function(index,ele){
      // height();不包含 padding 只会计算内容的宽高
      // outerHeight()既计算内容也计算padding
      totalHeight += $(ele).outerHeight(true);
    });
    console.log(totalHeight);
    $('.message').scrollTop(totalHeight);
  });
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>flex</title>
</head>
<body>
<style>
    h4{margin-top:40px;padding-top:5px;border-top:5px solid red;}
    table{margin-top:50px;}
    table thead th{background: #ddd}
    table th, table td{border:1px solid #ddd;padding:10px;}
    .flex-wrap{}
    .flex-wrap ~ .flex-wrap{margin-top:20px;}
    .flex{display:flex;width:480px;border:1px solid #ddd;}
    .flex-item{width:100px;padding:10px;margin:10px;box-sizing:border-box;font-size:15px;text-align:center;background-color:#888;}
    .flex-item{}
    .inline-flex{display:inline-flex;width:480px;border:1px solid #ddd;}

    .label{border:1px solid pink;padding:2px 5px;}
    .target{background:lightpink;}
    .align-content{width:360px;height:300px;flex-wrap:wrap;}
    .align-content .flex-item{flex:0 0 auto;}
    .align-content.stretch{align-content:stretch;}
    .align-content.flex-start{align-content:flex-start;}
    .align-content.flex-end{align-content:flex-end;}
    .align-content.center{align-content:center;}
    .align-content.space-between{align-content:space-between;}
    .align-content.space-around{align-content:space-around;}

    .align-items{width:350px;height:100px;}
    .align-items .flex-item{width:50px;}
    .align-items.flex-start{align-items:flex-start;}
    .align-items.flex-end{align-items:flex-end;}
    .align-items.center{align-items:center;}
    .align-items.baseline{align-items:baseline;}
    .align-items.stretch{align-items:stretch;}

    .align-self{height:100px;align-items:center;}
    .align-self .flex-item{}
    .align-self.flex-start .target{align-self:flex-start;}
    .align-self.flex-end .target{align-self:flex-end;}
    .align-self.center{align-items:flex-start;}
    .align-self.center .target{align-self:center;}
    .align-self.baseline .target{align-self:baseline;}
    .align-self.stretch .target{align-self:stretch;}

    .flex-basis{}
    .flex-basis.width .flex-item{width:30px;}

    .flex-direction{}
    .flex-direction.row-reverse{flex-direction:row-reverse;}
    .flex-direction.column{flex-direction:column;}
    .flex-direction.column-reverse{flex-direction:column-reverse;}

    .flex-grow{}
    .flex-grow .flex-item{width:auto;}
    .flex-grow.one .flex-item:nth-child(1){flex-grow:1;}
    .flex-grow.two .flex-item:nth-child(1){flex-grow:1;}
    .flex-grow.two .flex-item:nth-child(2){flex-grow:2;}

    .flex-shrink{width:400px;}
    .flex-shrink .flex-item{}
    .flex-shrink.zero .flex-item:nth-child(1){flex-shrink:0;}
    .flex-shrink.two .flex-item:nth-child(1){flex-shrink:1;}
    .flex-shrink.two .flex-item:nth-child(2){flex-shrink:2;}

    .flex-wrap{}
    .flex-wrap .flex-item{}
    .flex-wrap.nowrap{}
    .flex-wrap.wrap{flex-wrap:wrap;}
    .flex-wrap.wrap-reverse{flex-wrap:wrap-reverse;}

    .justify-content{}
    .justify-content .flex-item{width:auto;}
    .justify-content.flex-start{justify-content:flex-start;}
    .justify-content.flex-end{justify-content:flex-end;}
    .justify-content.center{justify-content:center;}
    .justify-content.space-between{justify-content:space-between;}
    .justify-content.space-around{justify-content:space-around;}
</style>

<h1>Flex Box Model</h1>

<h2>Box Model(layout)</h2>
<p>block, inline, table, positioned, flexbox</p>

<h3>속성과 초기값</h3>

<h4>display:flex</h4>
<div class="flex-wrap">
    <h5>display:flex</h5>
    <div class="flex">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>display:inline-flex</h5>
    <div class="inline-flex">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
    </div>
    <div class="inline-flex">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
    </div>
</div>

<h4>align-content</h4>
<p>높이값 필요, 2줄 이상일 때</p>
<div class="flex-wrap">
    <h5>align-content:stretch <span class="label">default</span></h5>
    <div class="flex align-content stretch">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-content:flex-start</h5>
    <div class="flex align-content flex-start">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-content:flex-end</h5>
    <div class="flex align-content flex-end">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-content:center</h5>
    <div class="flex align-content center">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-content:space-between</h5>
    <div class="flex align-content space-between">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-content:space-around</h5>
    <div class="flex align-content space-around">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>align-items</h4>
<div class="flex-wrap">
    <h5>align-items:flex-start</h5>
    <div class="flex align-items flex-start">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-items:flex-end</h5>
    <div class="flex align-items flex-end">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-items:center</h5>
    <div class="flex align-items center">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-items:baseline</h5>
    <div class="flex align-items baseline">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-items:stretch</h5>
    <div class="flex align-items stretch">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>


<h4>flex-self</h4>
<div class="flex-self">
    <h5>align-self:auto <span class="label">auto</span></h5>
    <div class="flex align-self auto">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-self:flex-start</h5>
    <div class="flex align-self flex-start">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-self:flex-end</h5>
    <div class="flex align-self flex-end">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-self:center</h5>
    <div class="flex align-self center">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-self:baseline</h5>
    <div class="flex align-self baseline">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>align-self:stretch</h5>
    <div class="flex align-self stretch">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item target">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>flex-basis</h4>
<div class="flex-basis">
    <h5>flex-basis:auto <span class="label">auto</span></h5>
    <div class="flex flex-basis auto">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>flex-basis:width</h5>
    <div class="flex flex-basis width">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>flex-direction</h4>
<div class="flex-direction">
    <h5>flex-direction:row <span class="label">auto</span></h5>
    <div class="flex flex-direction row">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-direction">
    <h5>flex-direction:row-reverse</h5>
    <div class="flex flex-direction row-reverse">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-direction">
    <h5>flex-direction:column</h5>
    <div class="flex flex-direction column">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-direction">
    <h5>flex-direction:column-reverse</h5>
    <div class="flex flex-direction column-reverse">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>flex-grow</h4>
<div class="flex-grow">
    <h5>flex-grow:0 <span class="label">default</span></h5>
    <div class="flex flex-grow">
        <div class="flex-item target">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-grow">
    <h5>flex-grow:1</h5>
    <div class="flex flex-grow one">
        <div class="flex-item target">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-grow">
    <h5>flex-grow:2</h5>
    <div class="flex flex-grow two">
        <div class="flex-item target">1</div>
        <div class="flex-item target">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>flex-shrink</h4>
<div class="flex-shrink">
    <h5>flex-shrink:1 <span class="label">default</span></h5>
    <div class="flex flex-shrink">
        <div class="flex-item target">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-shrink">
    <h5>flex-shrink:0</h5>
    <div class="flex flex-shrink zero">
        <div class="flex-item target">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-shrink">
    <h5>flex-shrink:2</h5>
    <div class="flex flex-shrink two">
        <div class="flex-item target">1</div>
        <div class="flex-item target">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>flex-wrap</h4>
<div class="flex-wrap">
    <h5>flex-wrap:nowrap <span class="label">default</span></h5>
    <div class="flex flex-wrap nowrap">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>flex-wrap:wrap</h5>
    <div class="flex flex-wrap wrap">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="flex-wrap">
    <h5>flex-wrap:wrap-reverse</h5>
    <div class="flex flex-wrap wrap-reverse">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<h4>justify-content</h4>
<div class="justify-content">
    <h5>justify-content:flex-start <span class="label">default</span></h5>
    <div class="flex justify-content">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="justify-content">
    <h5>justify-content:flex-end</h5>
    <div class="flex justify-content flex-end">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="justify-content">
    <h5>justify-content:center</h5>
    <div class="flex justify-content center">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="justify-content">
    <h5>justify-content:space-between</h5>
    <div class="flex justify-content space-between">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>
<div class="justify-content">
    <h5>justify-content:space-around</h5>
    <div class="flex justify-content space-around">
        <div class="flex-item">1</div>
        <div class="flex-item">2</div>
        <div class="flex-item">3</div>
        <div class="flex-item">4</div>
        <div class="flex-item">5</div>
    </div>
</div>

<table>
    <colgroup>
        <col>
        <col>
        <col>
        <col>
    </colgroup>
    <thead>
        <tr>
            <th>name</th>
            <th>value</th>
            <th>initial</th>
            <th>적용</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>display</th>
            <td>flex | inline-flex</td>
            <td></td>
            <td>flex-container</td>
        </tr>
        <tr>
            <th>align-content</th>
            <td>flex-start | flex-end | center | space-between | space-around | stretch</td>
            <td>stretch</td>
            <td>flex-container</td>
        </tr>
        <tr>
            <th>align-items</th>
            <td>flex-start | flex-end | center | baseline | stretch</td>
            <td>stretch</td>
            <td>flex containers</td>
        </tr>
        <tr>
            <th>align-self</th>
            <td>flex-start | flex-end | center | baseline | stretch</td>
            <td>auto</td>
            <td>flex-items</td>
        </tr>
        <tr>
            <th>flex</th>
            <td>none || flex-grow | flex-shrink | flex-basis</td>
            <td>0 1 auto</td>
            <td>flex-items</td>
        </tr>
        <tr>
            <th>align-basis</th>
            <td>content | width</td>
            <td>auto</td>
            <td>flex-items</td>
        </tr>
        <tr>
            <th>align-direction</th>
            <td>row | row-reverse | column | column-reverse</td>
            <td>row</td>
            <td>flex-container</td>
        </tr>
        <tr>
            <th>flex-flow</th>
            <td>flex-direction | flex-wrap</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <th>flex-grow</th>
            <td>숫자</td>
            <td>0</td>
            <td>flex-items</td>
        </tr>
        <tr>
            <th>flex-shrink</th>
            <td>숫자</td>
            <td>1</td>
            <td>flex-items</td>
        </tr>
        <tr>
            <th>flex-wrap</th>
            <td>nowrap | wrap | wrap-reverse</td>
            <td>nowrap</td>
            <td>flex-container</td>
        </tr>
        <tr>
            <th>jusitify-content</th>
            <td>flex-start | flex-end | center | space-between | space-around</td>
            <td>flex-start</td>
            <td>flex-container</td>
        </tr>
    </tbody>
</table>
<h3>지원 브라우저</h3>
<p>chrome 29, ie11</p>
<h3>참고 사이트</h3>
<div>
    <div>https://cssreference.io/flexbox/ <span style="color:red">이것만 봐봐</span></div>
    <div>https://d2.naver.com/helloworld/8540176</div>
    <div>https://www.w3schools.com/css/css3_flexbox.asp#flex-flow</div>
    <div>https://drafts.csswg.org/css-flexbox/#flex-common</div>
</div>
</body>
</html>

<img width="832" alt="截圖 2024-08-15 凌晨3 33 46" src="https://github.com/user-attachments/assets/575e0349-e94d-497a-a038-e7c211107a36">


<h3>軟體介紹</h3>

<h4>軟體：</h4> <p>使用 Processing 語言（Java）製作</p>

<h4>介紹：</h4>
<ol>
  <li>運用線條、圖案、顏色的變化來創造視覺上的美感</li>
  <li>使用者可透過滑鼠、鍵盤與動畫互動
    <ul>
      <li>殺老師變變變（迷因動畫）：使用者可透過滑鼠操作圓球的大小與旋轉速度</li>
      <li>迎雨霏霏（下雨動畫）：使用者可控制下雨的角度與顏色</li>
      <li>星輪幻彩（萬花筒）：使用者可控制圖案的旋轉速度、大小、發射物體</li>
    </ul>
  </li>
  <li>根據動畫搭配適合的音效</li>
</ol>

<h4>遇到的問題與解決方式：</h4>

<ul>
  <li>
    <strong>問題 1：</strong> 迎雨霏霏(下雨動畫）：線條雨真實性不足
    <br><br>
    <strong>解決方式：</strong>
    <ul>
      <li>新增 class <code>raining</code>，大量製造線條（雨），用 <code>random</code> 使 x、y 位置隨機，z 變數隨機，以模擬遠近、虛擬視差效果。</li>
      <li>用 <code>map</code> 函數使長度、速度、粗細隨著 z 變數而變化，模擬重力效果。</li>
    </ul>
  </li>
  
  <br>
  
  <li>
    <strong>問題 2：</strong> 星輪幻彩（萬花筒）：變化單調、物體超出邊界則消失
    <br><br>
    <strong>解決方式：</strong>
    <ul>
      <li>新增 class <code>item</code>，增加球的多樣性。</li>
      <li>超出邊界的物體，重新初始化 x、y 位置，並重複播放。</li>
    </ul>
  </li>
</ul>

<h3>作品影片</h3>

https://github.com/user-attachments/assets/6aba3bc5-6f1a-433d-bab1-a56a3c3adf61

https://github.com/user-attachments/assets/813ce393-0d05-4ed6-b2d3-17b8a2a3e09d

https://github.com/user-attachments/assets/a76a35e2-91e7-45bb-ad10-8fba2852a8d1

https://github.com/user-attachments/assets/7d284d04-6b63-47f0-ad24-ca9fe95a3669

https://github.com/user-attachments/assets/6d18662a-ef84-46ea-87b9-45fd40a0c4db

https://github.com/user-attachments/assets/04950549-13a7-43dc-aea1-d32f4075e1d8







$base = "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01"
$testImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_test_page.png"))
$skillsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_skills_page.png"))
$projectsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_projects_page.png"))
$footerImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_footer_home.png"))
$blogListImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_blog_list.png"))
$projDetailImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_project_detail.png"))
$catchAllImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_catchall.png"))
$notFoundImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_404.png"))
$errorImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_error.png"))
$blogAuthorImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_blog_author.png"))

$html = @"
<html xmlns:o='urn:schemas-microsoft-com:office:office' xmlns:w='urn:schemas-microsoft-com:office:word' xmlns='http://www.w3.org/TR/REC-html40'>
<head><meta charset="utf-8">
<!--[if gte mso 9]><xml><w:WordDocument><w:View>Print</w:View></w:WordDocument></xml><![endif]-->
<style>
body{font-family:'Times New Roman',serif;font-size:13pt;margin:2cm 2.5cm;line-height:1.5}
h1{font-size:17pt;color:#1a56db;text-align:center;margin-bottom:12pt;margin-top:25pt;page-break-before:always}
h1:first-of-type{page-break-before:avoid}
h2{font-size:13pt;color:#1e40af;border-bottom:1.5px solid #1e40af;padding-bottom:3pt;margin-top:14pt}
pre{background:#f3f4f6;border:1px solid #d1d5db;padding:6pt;font-family:Consolas,monospace;font-size:9pt;white-space:pre-wrap}
code{font-family:Consolas,monospace;font-size:9pt;background:#f3f4f6;padding:1pt 3pt}
table{border-collapse:collapse;width:100%;margin:6pt 0}
th,td{border:1px solid #000;padding:4pt 6pt;text-align:left;font-size:11pt}
th{background:#dbeafe;font-weight:bold}
.box{background:#eff6ff;border-left:4px solid #2563eb;padding:5pt 8pt;margin:5pt 0}
.ss{text-align:center;margin:10pt 0}
.ss img{max-width:460px;border:1px solid #ccc}
.cap{font-style:italic;color:#6b7280;font-size:10pt;text-align:center;margin-top:3pt}
.ok{color:#16a34a;font-weight:bold}
</style></head><body>

<div style="text-align:center;padding-top:60pt">
<h1 style="font-size:22pt;color:#000;page-break-before:avoid;border:none">BAI TAP THUC HANH</h1>
<h1 style="font-size:18pt;color:#1a56db;page-break-before:avoid;border:none">Cac cong nghe moi trong PTPM â€” Next.js</h1>
<p style="font-size:13pt;margin-top:25pt"><b>Project:</b> ctk46-lab01</p>
<p style="font-size:13pt"><b>Ho va ten:</b> Vy Hoang</p>
<p style="font-size:13pt"><b>GitHub:</b> github.com/VyHoang-designer/ctk46-lap01</p>
<p style="font-size:11pt;color:#888;margin-top:30pt">Ngay: 16/04/2026</p>
</div>

<!-- ============ PHAN 1 ============ -->
<h1>PHAN 1: File dac biet & Routing</h1>

<h2>Cau 1: Cac file dac biet trong src/app/</h2>
<pre>src/app/
+-- layout.js      &lt;- Root layout
+-- page.js        &lt;- Trang chu (/)
+-- loading.js     &lt;- Hien thi khi dang tai
+-- error.js       &lt;- Hien thi khi co loi
+-- not-found.js   &lt;- Trang 404
+-- template.js    &lt;- Re-mount khi chuyen trang
+-- globals.css    &lt;- CSS toan cuc
+-- favicon.ico</pre>

<h2>Cau 2: Vai tro layout.js va page.js</h2>
<div class="box">
<b>layout.js:</b> Root Layout dinh nghia HTML, Navbar va Footer dung chung. Giu nguyen state khi chuyen trang.<br>
<b>page.js:</b> Noi dung trang chu (/). Render ben trong {children} cua layout.
</div>

<h2>Cau 3: Tao route /test</h2>
<div class="ss"><img src="data:image/png;base64,$testImg"/><p class="cap">Routing /test hoat dong thanh cong</p></div>

<h2>Cau 4: Xoa thu muc test/</h2>
<pre>Remove-Item -Recurse -Force src/app/test</pre>
<p class="ok">=> Xoa thanh cong.</p>

<!-- ============ PHAN 2 ============ -->
<h1>PHAN 2: Portfolio & Giao dien</h1>

<h2>Cau 1: Cap nhat thong tin ca nhan</h2>
<p>Da cap nhat ten (Vy Hoang), truong DH Da Lat, email va GitHub ca nhan vao trang chu, gioi thieu, lien he.</p>

<h2>Cau 2: Them 3 du an vao /projects</h2>
<div class="ss"><img src="data:image/png;base64,$projectsImg"/><p class="cap">3 du an that: Portfolio, Hotel Booking, E-Commerce</p></div>

<h2>Cau 3: Doi ten Navbar</h2>
<p>Da doi logo tu "Portfolio" thanh <b>"Vy Hoang"</b> trong Navbar.js.</p>

<h2>Cau 4: Tao trang /skills</h2>
<div class="ss"><img src="data:image/png;base64,$skillsImg"/><p class="cap">Trang ky nang: Lap trinh va Thiet ke</p></div>

<h2>Cau 5: Sua Footer</h2>
<div class="ss"><img src="data:image/png;base64,$footerImg"/><p class="cap">Footer voi link Email va GitHub</p></div>

<!-- ============ PHAN 3 ============ -->
<h1>PHAN 3: Blog, Dynamic Routes & Catch-All</h1>

<h2>Cau 1: Them bai viet vao src/data/posts.js</h2>
<table>
<tr><th>#</th><th>Tieu de</th><th>Ngay</th><th>Tags</th></tr>
<tr><td>1</td><td>Bat dau voi Next.js App Router</td><td>2026-04-10</td><td>Next.js, React</td></tr>
<tr><td>2</td><td>Tailwind CSS co ban den nang cao</td><td>2026-04-12</td><td>CSS, Tailwind</td></tr>
<tr><td>3</td><td>Git & GitHub cho nguoi moi</td><td>2026-04-14</td><td>Git, DevOps</td></tr>
<tr><td>4</td><td>REST API voi Node.js</td><td>2026-04-16</td><td>Node.js, Backend</td></tr>
</table>
<div class="ss"><img src="data:image/png;base64,$blogListImg"/><p class="cap">Danh sach 4 bai viet voi tac gia va tags</p></div>

<h2>Cau 2: Truong author</h2>
<p>Moi bai viet co <code>author: "Vy Hoang"</code>. Hien thi tren trang chi tiet.</p>

<h2>Cau 3: Trang /projects/[id]</h2>
<div class="ss"><img src="data:image/png;base64,$projDetailImg"/><p class="cap">Chi tiet du an Hotel Booking tai /projects/hotel-booking</p></div>

<h2>Cau 4: Catch-all route [...slug]</h2>
<table>
<tr><th>Dac diem</th><th>[slug]</th><th>[...slug]</th></tr>
<tr><td>Kieu params</td><td>string</td><td>string[] (mang)</td></tr>
<tr><td>URL /blog/a/b/c</td><td style="color:red">404</td><td style="color:green">Hoat dong</td></tr>
<tr><td>Params</td><td>slug = "abc"</td><td>slug = ["a","b","c"]</td></tr>
</table>
<div class="ss"><img src="data:image/png;base64,$catchAllImg"/><p class="cap">Catch-all route /blog/a/b/c hien thi mang ["a","b","c"]</p></div>

<!-- ============ PHAN 4 ============ -->
<h1>PHAN 4: Loading, Error Boundary & 404</h1>

<h2>Cau 1: Tao loading.js cho blog chi tiet</h2>
<p>Da tao file <code>src/app/blog/[...slug]/loading.js</code> voi <b>skeleton UI</b> phu hop voi cau truc trang chi tiet bai viet.</p>
<p>Skeleton bao gom cac khoi xam dong (animate-pulse) mo phong:</p>
<ul>
<li>Link quay lai (w-48)</li>
<li>Tieu de bai viet (w-3/4, h-9)</li>
<li>Dong ngay + tac gia (3 khoi nho)</li>
<li>Tags (3 khoi badge)</li>
<li>Noi dung bai viet (8-10 dong text)</li>
</ul>
<pre>
// src/app/blog/[...slug]/loading.js
export default function BlogDetailLoading() {
  return (
    &lt;div className="max-w-3xl mx-auto px-4 py-12 animate-pulse"&gt;
      {/* Back link skeleton */}
      &lt;div className="h-4 w-48 bg-gray-200 rounded mb-8"&gt;&lt;/div&gt;
      {/* Title skeleton */}
      &lt;div className="h-9 w-3/4 bg-gray-200 rounded mb-4"&gt;&lt;/div&gt;
      {/* Author & date */}
      &lt;div className="flex items-center gap-3 mb-3"&gt;
        &lt;div className="h-4 w-28 bg-gray-200 rounded"&gt;&lt;/div&gt;
        &lt;div className="h-4 w-36 bg-gray-200 rounded"&gt;&lt;/div&gt;
      &lt;/div&gt;
      {/* Content lines */}
      &lt;div className="space-y-4 pt-8"&gt;
        &lt;div className="h-4 w-full bg-gray-200 rounded"&gt;&lt;/div&gt;
        &lt;div className="h-4 w-5/6 bg-gray-200 rounded"&gt;&lt;/div&gt;
        ...
      &lt;/div&gt;
    &lt;/div&gt;
  );
}
</pre>
<div class="box">
<b>Giai thich:</b> <code>animate-pulse</code> la class Tailwind CSS tao hieu ung nhap nhay (opacity thay doi 0 &rarr; 1 &rarr; 0), giup nguoi dung nhan biet trang dang tai du lieu. Skeleton UI mo phong chinh xac cau truc trang that de tao cam giac loading muot ma hon spinner truyen thong.
</div>

<h2>Cau 2: Tao error.js cho toan bo ung dung</h2>
<p>Da cap nhat file <code>src/app/error.js</code> voi giao dien bao loi chuyen nghiep:</p>
<ul>
<li>Icon canh bao SVG voi hieu ung <code>animate-bounce</code></li>
<li>Hien thi thong bao loi cu the (<code>error.message</code>)</li>
<li>Nut <b>"Thu lai"</b> goi <code>reset()</code> de thu render lai</li>
<li>Nut <b>"Ve Trang chu"</b> dieu huong an toan</li>
</ul>
<pre>
// Luu y quan trong: error.js PHAI la Client Component
'use client';

export default function GlobalError({ error, reset }) {
  return (
    // Hien thi icon canh bao + error.message
    // Nut "Thu lai" goi reset()
    // Nut "Ve Trang chu" link toi "/"
  );
}
</pre>
<div class="box">
<b>Giai thich:</b> Error Boundary trong Next.js hoat dong nhu mot "luoi an toan". Khi bat ky component con nao trong route bi loi, error.js se bat loi do va hien thi UI thay the, KHONG lam sap toan bo trang web. Navbar va Footer van hien thi binh thuong.
</div>

<h2>Cau 3: Tuy chinh trang 404 voi animation</h2>
<p>Da thiet ke lai <code>src/app/not-found.js</code> voi chu de <b>khong gian (Space theme)</b>:</p>
<ul>
<li>So "404" lon (text-9xl) lam nen mo</li>
<li>Hinh minh hoa <b>phi hanh gia SVG</b> voi hieu ung <code>animate-bounce</code> (bay lo lung)</li>
<li>Cac <b>ngoi sao nhap nhay</b> (<code>animate-ping</code>) voi thoi gian khac nhau</li>
<li>Thong bao "Ban da lac vao khong gian!"</li>
<li>2 nut: "Quay ve Trang chu" va "Doc Blog"</li>
</ul>
<div class="ss"><img src="data:image/png;base64,$notFoundImg"/><p class="cap">Trang 404 voi phi hanh gia va ngoi sao animation</p></div>

<h2>Cau 4: Thu tao loi co y va quan sat Error Boundary</h2>
<p>Tao file <code>src/app/test-error/page.js</code> co y goi method tren <code>undefined</code>:</p>
<pre>
'use client';

export default function TestErrorPage() {
  const data = undefined;
  const result = data.map((item) =&gt; item.name);
  // TypeError: Cannot read properties of undefined (reading 'map')

  return &lt;div&gt;{result}&lt;/div&gt;;
}
</pre>
<p><b>Ket qua:</b> Khi truy cap <code>/test-error</code>, trang bi loi nhung Error Boundary (error.js) da <b>bat duoc loi</b> va hien thi giao dien thay the:</p>
<div class="ss"><img src="data:image/png;base64,$errorImg"/><p class="cap">Error Boundary bat loi "Cannot read properties of undefined (reading 'map')"</p></div>

<div class="box">
<b>Nhan xet quan trong:</b><br>
- <b>Navbar va Footer van hien thi binh thuong</b> (khong bi anh huong boi loi) vi error.js nam ben trong layout.js.<br>
- Thong bao loi duoc hien thi ro rang: <span style="color:red">"Cannot read properties of undefined (reading 'map')"</span>.<br>
- Nguoi dung co the nhan "Thu lai" hoac "Ve Trang chu" de phuc hoi.<br>
- Day chinh la co che <b>Error Boundary</b> cua React â€” giup ung dung khong bi crash hoan toan khi co loi xay ra o mot route cu the.
</div>

<hr>
<p style="text-align:center;color:#9ca3af;font-size:11pt">--- Hoan thanh Bai tap Thuc hanh Phan 1, 2, 3, 4 ---</p>
</body></html>
"@

$html | Out-File -FilePath "$base\BaiTapTuLam_Final.doc" -Encoding utf8
Write-Host "DONE"


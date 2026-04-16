$base = "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01"
$testImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_test_page.png"))
$homeImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_home_page.png"))
$skillsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_skills_page.png"))
$projectsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_projects_page.png"))
$footerImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\screenshot_footer_home.png"))
$blogListImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_blog_list.png"))
$blogDetailImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_blog_detail.png"))
$projDetailImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_project_detail.png"))
$catchAllImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("$base\ss_catchall.png"))

$html = @"
<html xmlns:o='urn:schemas-microsoft-com:office:office'
      xmlns:w='urn:schemas-microsoft-com:office:word'
      xmlns='http://www.w3.org/TR/REC-html40'>
<head>
<meta charset="utf-8">
<!--[if gte mso 9]><xml><w:WordDocument><w:View>Print</w:View></w:WordDocument></xml><![endif]-->
<style>
body { font-family: 'Times New Roman', serif; font-size: 13pt; margin: 2cm 2.5cm; line-height: 1.5; }
h1 { font-size: 18pt; color: #1a56db; text-align: center; margin-bottom: 15pt; margin-top: 30pt; page-break-before: always; }
h1:first-of-type { page-break-before: avoid; }
h2 { font-size: 14pt; color: #1e40af; border-bottom: 1.5px solid #1e40af; padding-bottom: 3pt; margin-top: 16pt; }
h3 { font-size: 13pt; color: #374151; margin-top: 10pt; }
pre { background-color: #f3f4f6; border: 1px solid #d1d5db; padding: 8pt; font-family: 'Consolas', monospace; font-size: 9pt; white-space: pre-wrap; }
code { font-family: 'Consolas', monospace; font-size: 9pt; background-color: #f3f4f6; padding: 1pt 3pt; }
table { border-collapse: collapse; width: 100%; margin: 8pt 0; }
th, td { border: 1px solid #000; padding: 5pt 8pt; text-align: left; font-size: 11pt; }
th { background-color: #dbeafe; font-weight: bold; }
.box { background-color: #eff6ff; border-left: 4px solid #2563eb; padding: 6pt 10pt; margin: 6pt 0; }
.ss { text-align: center; margin: 12pt 0; }
.ss img { max-width: 480px; border: 1px solid #ccc; }
.cap { font-style: italic; color: #6b7280; font-size: 10pt; text-align: center; margin-top: 4pt; }
.ok { color: #16a34a; font-weight: bold; }
.cover { text-align: center; padding-top: 80pt; }
.cover h1 { font-size: 24pt; color: #000; page-break-before: avoid; border: none; }
</style>
</head>
<body>

<!-- TRANG BIA -->
<div class="cover">
<h1 style="font-size: 24pt; border: none;">BAI TAP THUC HANH</h1>
<h1 style="font-size: 20pt; color: #1a56db; border: none; page-break-before: avoid;">Cac cong nghe moi trong PTPM</h1>
<p style="font-size: 14pt; margin-top: 30pt;"><b>Project:</b> ctk46-lab01 (Next.js App Router)</p>
<p style="font-size: 14pt;"><b>Ho va ten:</b> Vy Hoang</p>
<p style="font-size: 14pt;"><b>GitHub:</b> github.com/VyHoang-designer</p>
<p style="font-size: 12pt; color: #888; margin-top: 40pt;">Ngay thuc hien: 16/04/2026</p>
</div>

<!-- ===================== PHAN 1 ===================== -->
<h1>PHAN 1: Tim hieu cac file dac biet & Routing</h1>

<h2>Cau 1: Xac dinh cac file dac biet trong src/app/</h2>
<p>Mo project ctk46-lab01 va kiem tra cau truc thu muc <code>src/app/</code>:</p>
<pre>
src/app/
+-- favicon.ico
+-- globals.css
+-- layout.js         &lt;- Root layout (bao boc toan bo app)
+-- page.js           &lt;- Trang chu (/)
+-- loading.js        &lt;- Giao dien khi dang tai trang
+-- error.js          &lt;- Giao dien khi co loi
+-- not-found.js      &lt;- Trang 404 tuy chinh
+-- template.js       &lt;- Tuong tu layout, tao instance moi khi chuyen trang
</pre>
<table>
<tr><th>File</th><th>Vai tro</th><th>Pham vi</th></tr>
<tr><td>page.js</td><td>Noi dung trang - <b>bat buoc</b></td><td>Route hien tai</td></tr>
<tr><td>layout.js</td><td>Layout bao boc (navbar, footer)</td><td>Route hien tai + con</td></tr>
<tr><td>loading.js</td><td>Hien thi khi dang tai</td><td>Route hien tai + con</td></tr>
<tr><td>error.js</td><td>Hien thi khi co loi</td><td>Route hien tai + con</td></tr>
<tr><td>not-found.js</td><td>Trang 404</td><td>Route hien tai</td></tr>
<tr><td>template.js</td><td>Re-mount moi khi chuyen trang</td><td>Route hien tai + con</td></tr>
</table>

<h2>Cau 2: Vai tro cua layout.js va page.js</h2>
<div class="box">
<b>layout.js (Root Layout):</b> Dinh nghia cau truc HTML (html, body), Header/Navbar va Footer dung chung cho toan bo ung dung. Giu nguyen state khi chuyen trang (khong re-render). Import Google Fonts va globals.css.<br><br>
<b>page.js (Trang chu):</b> Dinh nghia noi dung chinh chi hien thi khi truy cap route "/". Hien thi loi chao va cac nut dieu huong. Noi dung nay duoc render ben trong <code>{children}</code> cua layout.js.
</div>

<h2>Cau 3: Tao route /test va kiem tra routing</h2>
<p>Tao file <code>src/app/test/page.js</code>, chay <code>npm run dev</code>, truy cap <code>http://localhost:3000/test</code>:</p>
<div class="ss">
<img src="data:image/png;base64,$testImg" alt="Test page" />
<p class="cap">Routing hoat dong thanh cong tai /test</p>
</div>

<h2>Cau 4: Xoa thu muc test/</h2>
<pre>Remove-Item -Recurse -Force src/app/test</pre>
<p class="ok">=> Thu muc test/ da duoc xoa thanh cong sau khi xac nhan.</p>

<!-- ===================== PHAN 2 ===================== -->
<h1>PHAN 2: Xay dung Portfolio & Chinh sua giao dien</h1>

<h2>Cau 1: Cap nhat thong tin ca nhan</h2>
<p>Da cap nhat trang chu, gioi thieu, lien he voi thong tin ca nhan that (ten: Vy Hoang, truong DH Da Lat, email va GitHub ca nhan).</p>

<h2>Cau 2: Them 3 du an vao /projects</h2>
<p>Da them 3 du an that da thuc hien: Website Portfolio (Next.js), Hotel Booking (.NET 9.0), E-Commerce App (Ionic). Su dung mang <code>projects</code> va <code>map()</code> de render.</p>
<div class="ss">
<img src="data:image/png;base64,$projectsImg" alt="Projects" />
<p class="cap">Trang du an voi 3 project that</p>
</div>

<h2>Cau 3: Doi ten Navbar thanh ten that</h2>
<p>Da sua logo Navbar tu "Portfolio" thanh <b>"Vy Hoang"</b> trong <code>src/components/Navbar.js</code>. Dong thoi them link trang Ky nang vao menu.</p>

<h2>Cau 4: Tao trang /skills</h2>
<p>Tao file <code>src/app/skills/page.js</code> hien thi 2 nhom ky nang: Lap trinh va Thiet ke UI/UX.</p>
<div class="ss">
<img src="data:image/png;base64,$skillsImg" alt="Skills" />
<p class="cap">Trang ky nang moi duoc tao</p>
</div>

<h2>Cau 5: Sua Footer them GitHub va Email</h2>
<p>Da cap nhat <code>src/components/Footer.js</code> them link GitHub (<code>github.com/VyHoang-designer</code>) va Email (<code>mailto:vyhoang-designer@sv.dlu.edu.vn</code>).</p>
<div class="ss">
<img src="data:image/png;base64,$footerImg" alt="Footer" />
<p class="cap">Footer sau khi cap nhat</p>
</div>

<!-- ===================== PHAN 3 ===================== -->
<h1>PHAN 3: Blog, Dynamic Routes & Catch-All</h1>

<h2>Cau 1: Them bai viet vao src/data/posts.js</h2>
<p>Da tao file <code>src/data/posts.js</code> chua <b>4 bai viet</b> (yeu cau toi thieu 2 bai them):</p>
<table>
<tr><th>#</th><th>Tieu de</th><th>Ngay</th><th>Tags</th></tr>
<tr><td>1</td><td>Bat dau voi Next.js App Router</td><td>2026-04-10</td><td>Next.js, React, Web Dev</td></tr>
<tr><td>2</td><td>Tailwind CSS: Tu co ban den nang cao</td><td>2026-04-12</td><td>CSS, Tailwind, Frontend</td></tr>
<tr><td>3</td><td>Git & GitHub cho nguoi moi bat dau</td><td>2026-04-14</td><td>Git, GitHub, DevOps</td></tr>
<tr><td>4</td><td>Xay dung REST API voi Node.js</td><td>2026-04-16</td><td>Node.js, Express, Backend</td></tr>
</table>
<div class="ss">
<img src="data:image/png;base64,$blogListImg" alt="Blog list" />
<p class="cap">Danh sach blog hien thi 4 bai viet voi tac gia va tags</p>
</div>

<h2>Cau 2: Them truong author va hien thi tren trang chi tiet</h2>
<p>Moi bai viet trong <code>posts.js</code> deu co truong <code>author: "Vy Hoang"</code>. Trang chi tiet blog hien thi thong tin tac gia voi icon va dinh dang noi bat.</p>
<p>Code minh hoa trong file data:</p>
<pre>
{
  id: "bai-viet-1",
  title: "Bat dau voi Next.js App Router",
  author: "Vy Hoang",       // &lt;-- Truong author moi
  date: "2026-04-10",
  tags: ["Next.js", "React"],
  content: "...",
}
</pre>
<p>Hien thi tren trang chi tiet:</p>
<pre>
&lt;span&gt;Tac gia: &lt;strong&gt;{post.author}&lt;/strong&gt;&lt;/span&gt;
</pre>

<h2>Cau 3: Tao trang /projects/[id] hien thi chi tiet du an</h2>
<p>Da tao file <code>src/data/projects.js</code> chua du lieu chi tiet va file <code>src/app/projects/[id]/page.js</code> su dung dynamic route de hien thi chi tiet tung du an.</p>
<p>Cach hoat dong: Khi nguoi dung click vao mot du an, URL se la <code>/projects/hotel-booking</code>, Next.js tu dong truyen <code>params.id = "hotel-booking"</code> vao component, ham <code>getProjectById()</code> tim du an tuong ung tu mang data.</p>
<div class="ss">
<img src="data:image/png;base64,$projDetailImg" alt="Project detail" />
<p class="cap">Trang chi tiet du an Hotel Booking tai /projects/hotel-booking</p>
</div>

<h2>Cau 4: Catch-all route [...slug] va su khac biet voi [slug]</h2>
<p>Da thay the <code>src/app/blog/[slug]/page.js</code> bang <code>src/app/blog/[...slug]/page.js</code> (catch-all route).</p>

<p><b>Su khac biet chinh:</b></p>
<table>
<tr><th>Dac diem</th><th>[slug] (Dynamic Route)</th><th>[...slug] (Catch-All Route)</th></tr>
<tr><td>Kieu params</td><td><code>string</code></td><td><code>string[]</code> (mang)</td></tr>
<tr><td>So segment</td><td>Chi 1 segment</td><td>1 hoac nhieu segment</td></tr>
<tr><td>Vi du URL</td><td>/blog/abc</td><td>/blog/a/b/c</td></tr>
<tr><td>Params nhan duoc</td><td>slug = "abc"</td><td>slug = ["a", "b", "c"]</td></tr>
<tr><td>URL /blog/a/b/c</td><td><span style="color:red;">404 Not Found</span></td><td><span style="color:green;">Hoat dong</span></td></tr>
</table>

<p>Khi truy cap <code>/blog/a/b/c</code>:</p>
<div class="ss">
<img src="data:image/png;base64,$catchAllImg" alt="Catch-all" />
<p class="cap">Catch-all route nhan duoc mang slug = ["a", "b", "c"] voi 3 segment</p>
</div>

<div class="box">
<b>Ket luan:</b> Catch-all route (<code>[...slug]</code>) linh hoat hon dynamic route (<code>[slug]</code>) vi no co the bat duoc nhieu segment URL cung luc. Dieu nay huu ich cho cac truong hop nhu danh muc phan cap (categories/subcategories), duong dan tai lieu (docs/section/page), hoac he thong tag/filter phuc tap.
</div>

<hr>
<p style="text-align: center; color: #9ca3af; font-size: 11pt;">--- Hoan thanh Bai tap Thuc hanh Phan 1, 2, 3 ---</p>

</body>
</html>
"@

$html | Out-File -FilePath "$base\BaiTapTuLam_TongHop.doc" -Encoding utf8
Write-Host "DONE"

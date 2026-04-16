$testImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_test_page.png"))
$homeImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_home_page.png"))

# Copying screenshots from subagent
Copy-Item "C:\Users\HoangVy\.gemini\antigravity\brain\771857e8-1de1-4b10-8849-7846b48ba508\skills_page_1776332387186.png" "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_skills_page.png" -ErrorAction SilentlyContinue
Copy-Item "C:\Users\HoangVy\.gemini\antigravity\brain\771857e8-1de1-4b10-8849-7846b48ba508\projects_page_1776332401852.png" "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_projects_page.png" -ErrorAction SilentlyContinue
Copy-Item "C:\Users\HoangVy\.gemini\antigravity\brain\771857e8-1de1-4b10-8849-7846b48ba508\footer_home_page_1776332423674.png" "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_footer_home.png" -ErrorAction SilentlyContinue

$skillsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_skills_page.png"))
$projectsImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_projects_page.png"))
$footerImg = [Convert]::ToBase64String([IO.File]::ReadAllBytes("C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\screenshot_footer_home.png"))

$html = @"
<html xmlns:o='urn:schemas-microsoft-com:office:office'
      xmlns:w='urn:schemas-microsoft-com:office:word'
      xmlns='http://www.w3.org/TR/REC-html40'>
<head>
<meta charset="utf-8">
<style>
body { font-family: 'Times New Roman', serif; font-size: 13pt; margin: 2.54cm; line-height: 1.5; }
h1 { font-size: 18pt; color: #1a56db; text-align: center; margin-bottom: 20pt; }
h2 { font-size: 15pt; color: #1e40af; border-bottom: 2px solid #1e40af; padding-bottom: 4pt; margin-top: 20pt; }
h3 { font-size: 13pt; color: #374151; margin-top: 12pt; }
pre { background-color: #f3f4f6; border: 1px solid #d1d5db; padding: 10pt; font-family: 'Consolas', monospace; font-size: 10pt; white-space: pre-wrap; }
code { font-family: 'Consolas', monospace; font-size: 10pt; background-color: #f3f4f6; padding: 1pt 3pt; }
table { border-collapse: collapse; width: 100%; margin: 10pt 0; }
th, td { border: 1px solid #000; padding: 6pt 10pt; text-align: left; }
th { background-color: #dbeafe; font-weight: bold; }
.role-box { background-color: #eff6ff; border-left: 4px solid #2563eb; padding: 8pt 12pt; margin: 8pt 0; }
.screenshot { text-align: center; margin: 15pt 0; }
.screenshot img { max-width: 500px; border: 1px solid #ccc; }
.caption { font-style: italic; color: #6b7280; font-size: 11pt; text-align: center; margin-top: 5pt; }
.success { color: #16a34a; font-weight: bold; }
.info { font-size: 11pt; color: #6b7280; }
.part-title { font-size: 20pt; color: #000; margin-top: 30pt; margin-bottom: 15pt; text-align: center;}
</style>
</head>
<body>

<p class="part-title"><b>BAI TAP TU LAM - TONG HOP</b></p>
<p class="info" style="text-align: center;"><b>Ho va ten:</b> Vy Hoang &nbsp;&nbsp;|&nbsp;&nbsp; <b>Project:</b> ctk46-lab01</p>

<!-- PHAN 1 -->
<h1>Phan 1: Tim hieu cac file dac biet & Routing</h1>

<h2>Cau 1: Xac dinh cac file dac biet trong src/app/</h2>
<pre>
src/app/
+-- error.js          (Giao dien hien thi khi co loi)
+-- layout.js         (Root layout - bao boc toan bo app)
+-- loading.js        (Giao dien hien thi khi dang tai trang)
+-- not-found.js      (Trang 404 tuy chinh)
+-- page.js           (Trang chu /)
+-- template.js       (Tuong tu layout nhung tao instance moi khi thay doi route)
</pre>

<h2>Cau 2: Vai tro cua layout.js va page.js</h2>
<div class="role-box">
<b>layout.js:</b> Dinh nghia the HTML co ban, Header va Footer dung chung. Duy tri state giua cac trang.<br>
<b>page.js:</b> Dinh nghia noi dung UI doc quyen chi the hien khi truy cap duong dan goc "/".
</div>

<h2>Cau 3 & 4: Thu nghiem tao & xoa route /test</h2>
<div class="screenshot">
<img src="data:image/png;base64,$testImg" alt="Trang Test" />
<p class="caption">Truy cap thanh cong /test roi xoa (Bang lenh Remove-Item)</p>
</div>

<!-- PHAN 2 -->
<h1>Phan 2: Xay dung Portfolio & Chinh sua UI</h1>

<h2>2.1: Cap nhat noi dung ca nhan</h2>
<p>
Da thay doi thong tin trang chu, gioi thieu thanh thong tin ca nhan (ten: Vy Hoang, nganh CNTT, update cac truong tuy chinh CSS phu hop).<br>
Trang lien he da cap nhat Mail va GitHub (vyhoang-designer).
</p>

<h2>2.2: Them 3 du an vao trang /projects</h2>
<p>
Trang Portfolio da duoc tich hop mảng <code>projects</code> gom cac do an rieng cua sinh vien: Website Portfolio, Hotel Booking System (.NET 9) va Ionic E-commerce App. Su dung <code>map()</code> de in.
</p>
<div class="screenshot">
<img src="data:image/png;base64,$projectsImg" alt="Trang Du an" />
<p class="caption">Hien thi danh sach 3 du an cua Vy Hoang giup nha tuyen dung thay ro nang luc</p>
</div>

<h2>2.3: Doi ten "Portfolio" trong Navbar va the Navbar link</h2>
<p>
Chinh sua <code>src/components/Navbar.js</code>, cap nhat Logo Navbar thanh dang Text <b>Vy Hoang</b> tich hop kem highlight currentActiveRoute.
</p>

<h2>2.4: Tao moi trang Kỹ Năng (/skills)</h2>
<p>
Tao component <code>page.js</code> trong he file <code>src/app/skills/</code>.
Hien thi bang 2 khoi danh sach ky nang: Lap trinh & Thiet ke UI UX.
</p>
<div class="screenshot">
<img src="data:image/png;base64,$skillsImg" alt="Trang Ky Nang" />
<p class="caption">Giao dien trang danh sach Ky nang moi duoc tao</p>
</div>

<h2>2.5: Sua Footer (GH, Mail)</h2>
<p>
Cap nhat Component <code>src/components/Footer.js</code> them duong dan Mailto va thuoc tinh mo form ra ngoai <code>_blank</code> de tro den Github.
</p>
<div class="screenshot">
<img src="data:image/png;base64,$footerImg" alt="Footer moi" />
<p class="caption">Footer sau update them Mail va GitHub</p>
</div>

<hr>
<p style="text-align: center; color: #9ca3af; font-size: 11pt;">Hoan thanh toan bo Bai tap TH - Next JS</p>

</body>
</html>
"@

$html | Out-File -FilePath "C:\Users\HoangVy\.gemini\antigravity\scratch\ctk46-lap01\BaiTapTuLam_Phan1_va_2.doc" -Encoding utf8
Write-Host "DOC_GENERATED"

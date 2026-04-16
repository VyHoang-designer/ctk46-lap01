'use client';

export default function TestErrorPage() {
  // Cố ý gọi method trên undefined để tạo lỗi
  const data = undefined;
  const result = data.map((item) => item.name); // TypeError: Cannot read properties of undefined

  return (
    <div>
      <h1>Trang này sẽ không bao giờ hiển thị</h1>
      <p>{result}</p>
    </div>
  );
}

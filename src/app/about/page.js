export const metadata = {
  title: 'Giới thiệu',
  description: 'Thông tin chi tiết về bản thân',
};

export default function About() {
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)] max-w-3xl mx-auto">
      <h1 className="text-3xl font-bold mb-6">Giới thiệu</h1>
      <div className="prose dark:prose-invert">
        <p>
          Chào bạn, tôi là một nhà phát triển phần mềm và thiết kế website. Tôi có niềm đam mê với việc tạo ra những trải nghiệm người dùng tuyệt vời và các sản phẩm có giá trị thực tiễn.
        </p>
        <p>
          Trang web này được xây dựng để lưu trữ các bài viết, dự án và thông tin cá nhân của tôi.
        </p>
      </div>
    </div>
  );
}

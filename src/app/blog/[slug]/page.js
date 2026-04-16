import Link from 'next/link';

export async function generateMetadata({ params }) {
  // Use Promise.resolve slightly for Next 15 parameter requirements (params is a promise in Next 15)
  const resolvedParams = await Promise.resolve(params);
  return {
    title: `Bài viết: ${resolvedParams.slug}`,
    description: 'Nội dung chi tiết từng bài viết',
  };
}

export default async function BlogPost({ params }) {
  const resolvedParams = await Promise.resolve(params);
  
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)] max-w-3xl mx-auto">
      <Link href="/blog" className="text-blue-500 hover:underline mb-8 inline-block">
        &larr; Quay lại danh sách Blog
      </Link>
      
      <article className="prose dark:prose-invert">
        <h1 className="text-3xl font-bold mb-4">Chi tiết bài viết: {resolvedParams.slug}</h1>
        <p className="text-gray-500 mb-8">Ngày đăng: {new Date().toLocaleDateString('vi-VN')}</p>
        
        <p>
          Đây là nội dung mô phỏng cho bài viết {resolvedParams.slug}. Trong thực tế, nội dung này sẽ được lấy từ một bài Markdown, CMS hoặc một cơ sở dữ liệu.
        </p>
        
        <h2>Tiêu đề phụ 1</h2>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in odio ultricies, dapibus metus ac, vestibulum felis. Nunc facilisis diam orci, non vulputate neque venenatis vitae.
        </p>
        
        <h2>Tiêu đề phụ 2</h2>
        <p>
          Donec sed tortor at tortor consequat eleifend. Quisque et massa ac orci dapibus mattis sit amet a quam. Praesent dignissim varius dui, ac aliquet ex aliquam tristique.
        </p>
      </article>
    </div>
  );
}

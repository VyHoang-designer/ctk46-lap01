import Link from 'next/link';

export const metadata = {
  title: 'Blog',
  description: 'Danh sách bài viết',
};

const posts = [
  { id: 'bai-viet-1', title: 'Bài viết số 1', date: '2023-10-01', description: 'Mô tả ngắn gọn cho bài viết số 1.' },
  { id: 'bai-viet-2', title: 'Bài viết số 2', date: '2023-10-15', description: 'Mô tả ngắn gọn cho bài viết số 2.' },
];

export default function Blog() {
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)] max-w-3xl mx-auto">
      <h1 className="text-3xl font-bold mb-6">Blog</h1>
      <div className="flex flex-col gap-6">
        {posts.map((post) => (
          <Link href={`/blog/${post.id}`} key={post.id} className="block p-6 border border-gray-200 dark:border-gray-800 rounded-lg hover:border-blue-500 transition-colors">
            <h2 className="text-xl font-semibold mb-2">{post.title}</h2>
            <p className="text-sm text-gray-500 mb-4">{post.date}</p>
            <p className="text-gray-700 dark:text-gray-300">{post.description}</p>
          </Link>
        ))}
      </div>
    </div>
  );
}

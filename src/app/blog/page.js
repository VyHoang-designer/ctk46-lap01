import Link from 'next/link';
import { posts } from '@/data/posts';

export const metadata = {
  title: 'Blog',
  description: 'Danh sách bài viết',
};

export default function Blog() {
  return (
    <div className="max-w-5xl mx-auto px-4 py-12">
      <h1 className="text-3xl font-bold mb-6">Blog</h1>
      <div className="flex flex-col gap-6">
        {posts.map((post) => (
          <Link href={`/blog/${post.id}`} key={post.id} className="block p-6 border border-gray-200 dark:border-gray-800 rounded-lg hover:border-blue-500 hover:shadow-md transition-all group">
            <h2 className="text-xl font-semibold mb-2 group-hover:text-blue-600 transition-colors">{post.title}</h2>
            <div className="flex items-center gap-3 text-sm text-gray-500 mb-3">
              <span>{post.date}</span>
              <span>•</span>
              <span>Tác giả: {post.author}</span>
            </div>
            <p className="text-gray-700 dark:text-gray-300 mb-3">{post.description}</p>
            <div className="flex gap-2">
              {post.tags.map((tag) => (
                <span key={tag} className="bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-400 text-xs px-2 py-1 rounded">
                  {tag}
                </span>
              ))}
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}

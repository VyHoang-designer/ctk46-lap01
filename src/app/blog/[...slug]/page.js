import Link from 'next/link';
import { notFound } from 'next/navigation';
import { posts, getPostBySlug } from '@/data/posts';

export async function generateMetadata({ params }) {
  const resolvedParams = await params;
  const slug = resolvedParams.slug;

  // Catch-all route: slug là một mảng, ví dụ /blog/a/b/c => slug = ['a', 'b', 'c']
  if (slug.length === 1) {
    const post = getPostBySlug(slug[0]);
    if (post) {
      return { title: post.title, description: post.description };
    }
  }

  return {
    title: `Blog: ${slug.join('/')}`,
    description: 'Catch-all route demo',
  };
}

export default async function BlogPost({ params }) {
  const resolvedParams = await params;
  const slug = resolvedParams.slug; // Đây là mảng (array) vì dùng [...slug]

  // Trường hợp 1 segment: /blog/bai-viet-1 => slug = ['bai-viet-1']
  if (slug.length === 1) {
    const post = getPostBySlug(slug[0]);

    if (!post) {
      notFound();
    }

    return (
      <div className="max-w-3xl mx-auto px-4 py-12">
        <Link href="/blog" className="text-blue-500 hover:underline mb-8 inline-block">
          &larr; Quay lại danh sách Blog
        </Link>

        <article>
          <h1 className="text-3xl font-bold mb-3">{post.title}</h1>
          <div className="flex items-center gap-3 text-sm text-gray-500 mb-2">
            <span>📅 {post.date}</span>
            <span>•</span>
            <span>✍️ Tác giả: <strong className="text-gray-700 dark:text-gray-300">{post.author}</strong></span>
          </div>
          <div className="flex gap-2 mb-8">
            {post.tags.map((tag) => (
              <span key={tag} className="bg-blue-50 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 text-xs px-2 py-1 rounded">
                {tag}
              </span>
            ))}
          </div>

          <div className="prose dark:prose-invert max-w-none">
            {post.content.split('\n').map((paragraph, i) => (
              <p key={i} className="mb-4 text-gray-700 dark:text-gray-300 leading-relaxed">
                {paragraph}
              </p>
            ))}
          </div>
        </article>
      </div>
    );
  }

  // Trường hợp nhiều segment: /blog/a/b/c => slug = ['a', 'b', 'c']
  // Đây là demo catch-all route
  return (
    <div className="max-w-3xl mx-auto px-4 py-12">
      <Link href="/blog" className="text-blue-500 hover:underline mb-8 inline-block">
        &larr; Quay lại danh sách Blog
      </Link>

      <div className="bg-yellow-50 dark:bg-yellow-900/20 border border-yellow-300 dark:border-yellow-700 rounded-lg p-6">
        <h1 className="text-2xl font-bold mb-4 text-yellow-800 dark:text-yellow-200">
          🔍 Catch-All Route Demo
        </h1>
        <p className="mb-4 text-gray-700 dark:text-gray-300">
          Bạn đang truy cập một <strong>catch-all route</strong> với đường dẫn:
        </p>
        <code className="block bg-gray-100 dark:bg-gray-800 p-3 rounded mb-4 text-sm">
          /blog/{slug.join('/')}
        </code>
        <p className="mb-2 text-gray-700 dark:text-gray-300">
          Tham số <code>slug</code> nhận được là một <strong>mảng (array)</strong>:
        </p>
        <pre className="bg-gray-100 dark:bg-gray-800 p-3 rounded text-sm mb-4">
          {JSON.stringify(slug, null, 2)}
        </pre>
        <p className="text-sm text-gray-500">
          Tổng số segment: <strong>{slug.length}</strong>
        </p>

        <div className="mt-6 pt-4 border-t border-yellow-300 dark:border-yellow-700">
          <h3 className="font-semibold mb-2 text-gray-800 dark:text-gray-200">So sánh [slug] và [...slug]:</h3>
          <table className="w-full text-sm">
            <thead>
              <tr className="text-left">
                <th className="pb-2 pr-4">Route</th>
                <th className="pb-2 pr-4">URL ví dụ</th>
                <th className="pb-2">Params</th>
              </tr>
            </thead>
            <tbody className="text-gray-600 dark:text-gray-400">
              <tr>
                <td className="pb-1 pr-4"><code>[slug]</code></td>
                <td className="pb-1 pr-4">/blog/abc</td>
                <td className="pb-1">slug = "abc" (string)</td>
              </tr>
              <tr>
                <td className="pb-1 pr-4"><code>[...slug]</code></td>
                <td className="pb-1 pr-4">/blog/a/b/c</td>
                <td className="pb-1">slug = ["a","b","c"] (array)</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}

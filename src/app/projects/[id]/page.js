import Link from 'next/link';
import { notFound } from 'next/navigation';
import { getProjectById } from '@/data/projects';

export async function generateMetadata({ params }) {
  const resolvedParams = await params;
  const project = getProjectById(resolvedParams.id);
  if (!project) {
    return { title: 'Không tìm thấy dự án' };
  }
  return { title: project.title, description: project.description };
}

export default async function ProjectDetail({ params }) {
  const resolvedParams = await params;
  const project = getProjectById(resolvedParams.id);

  if (!project) {
    notFound();
  }

  return (
    <div className="max-w-3xl mx-auto px-4 py-12">
      <Link href="/projects" className="text-blue-500 hover:underline mb-8 inline-block">
        &larr; Quay lại danh sách Dự án
      </Link>

      <article>
        <div className="flex items-center justify-between mb-3">
          <h1 className="text-3xl font-bold">{project.title}</h1>
          <span className={`text-xs px-3 py-1 rounded-full font-medium ${project.status === 'Hoàn thành' ? 'bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-400' : 'bg-yellow-100 dark:bg-yellow-900/30 text-yellow-700 dark:text-yellow-400'}`}>
            {project.status}
          </span>
        </div>

        <p className="text-sm text-gray-500 mb-4">📅 {project.date}</p>
        <p className="text-lg text-gray-600 dark:text-gray-400 mb-6">{project.description}</p>

        <div className="flex gap-2 flex-wrap mb-8">
          {project.tech.map((t) => (
            <span key={t} className="bg-blue-50 dark:bg-blue-900/40 text-blue-700 dark:text-blue-400 text-sm px-3 py-1 rounded-md font-medium">
              {t}
            </span>
          ))}
        </div>

        <div className="border-t border-gray-200 dark:border-gray-800 pt-8">
          <h2 className="text-2xl font-semibold mb-4">Chi tiết dự án</h2>
          <div className="space-y-4">
            {project.content.split('\n').map((paragraph, i) => (
              <p key={i} className="text-gray-700 dark:text-gray-300 leading-relaxed">
                {paragraph}
              </p>
            ))}
          </div>
        </div>
      </article>
    </div>
  );
}

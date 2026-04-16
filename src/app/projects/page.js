import Link from 'next/link';
import { projects } from '@/data/projects';

export const metadata = {
  title: 'Dự án',
  description: 'Danh sách dự án đã thực hiện',
};

export default function ProjectsPage() {
  return (
    <div className="max-w-5xl mx-auto px-4 py-12">
      <h1 className="text-3xl font-bold mb-6">Dự án đã thực hiện</h1>
      <p className="text-gray-600 dark:text-gray-400 mb-8 max-w-2xl">
        Dưới đây là một số dự án tiêu biểu mình đã nghiên cứu, tham gia phát triển tại đại học và các dự án cá nhân.
      </p>
      <div className="grid gap-6">
        {projects.map((project) => (
          <Link
            href={`/projects/${project.id}`}
            key={project.id}
            className="block border border-gray-200 dark:border-gray-800 rounded-lg p-6 hover:shadow-lg transition-all dark:bg-gray-900 group"
          >
            <div className="flex items-center justify-between mb-2">
              <h2 className="text-xl font-semibold group-hover:text-blue-600 transition-colors">{project.title}</h2>
              <span className={`text-xs px-2 py-1 rounded-full ${project.status === 'Hoàn thành' ? 'bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-400' : 'bg-yellow-100 dark:bg-yellow-900/30 text-yellow-700 dark:text-yellow-400'}`}>
                {project.status}
              </span>
            </div>
            <p className="text-sm text-gray-500 mb-3">{project.date}</p>
            <p className="text-gray-600 dark:text-gray-400 mb-4">{project.description}</p>
            <div className="flex gap-2 flex-wrap">
              {project.tech.map((t) => (
                <span key={t} className="bg-blue-50 dark:bg-blue-900/40 text-blue-700 dark:text-blue-400 text-sm px-3 py-1 rounded-md font-medium">
                  {t}
                </span>
              ))}
            </div>
          </Link>
        ))}
      </div>
    </div>
  );
}

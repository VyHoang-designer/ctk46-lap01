export const metadata = {
  title: 'Dự án',
  description: 'Danh sách dự án đã thực hiện',
};

const projects = [
  { id: 1, name: 'Website thương mại điện tử', tech: 'Next.js, Tailwind CSS', link: '#' },
  { id: 2, name: 'Ứng dụng quản lý nhân sự', tech: 'React, Node.js', link: '#' },
  { id: 3, name: 'Portfolio cá nhân', tech: 'HTML, CSS, JS', link: '#' },
];

export default function Projects() {
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)] max-w-3xl mx-auto">
      <h1 className="text-3xl font-bold mb-6">Dự án đã thực hiện</h1>
      
      <div className="grid grid-cols-1 sm:grid-cols-2 gap-6">
        {projects.map((project) => (
          <div key={project.id} className="p-6 border border-gray-200 dark:border-gray-800 rounded-lg flex flex-col justify-between">
            <div>
              <h2 className="text-xl font-semibold mb-2">{project.name}</h2>
              <p className="text-sm text-gray-500 mb-4">{project.tech}</p>
            </div>
            <a href={project.link} className="text-blue-500 hover:underline mt-4 inline-block">
              Xem chi tiết &rarr;
            </a>
          </div>
        ))}
      </div>
    </div>
  );
}

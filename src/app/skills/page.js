export default function SkillsPage() {
  const codeSkills = ["JavaScript/ES6+", "TypeScript", "React & Next.js", "Tailwind CSS", "HTML5 & CSS3"];
  const designSkills = ["Figma", "UI/UX Design", "Adobe Photoshop", "Responsive Design"];
  
  return (
    <div className="max-w-5xl mx-auto px-4 py-12 animate-in fade-in duration-500">
      <div className="text-center mb-12">
        <h1 className="text-4xl font-bold mb-4">🖥️ Kỹ năng chuyên môn</h1>
        <p className="text-xl text-gray-600 dark:text-gray-400">
          Tổng hợp các công nghệ và kỹ năng mình đã trang bị trong quá trình học tập và làm việc.
        </p>
      </div>

      <div className="grid md:grid-cols-2 gap-8">
        <div className="bg-white dark:bg-gray-900 border border-gray-200 dark:border-gray-800 rounded-xl p-8 shadow-sm">
          <h2 className="text-2xl font-bold mb-6 text-blue-600 flex items-center gap-2">
            <span>&lt;/&gt;</span> Lập trình & Phát triển
          </h2>
          <div className="flex flex-wrap gap-3">
            {codeSkills.map(skill => (
              <span key={skill} className="px-4 py-2 bg-blue-50 dark:bg-blue-900/20 text-blue-700 dark:text-blue-300 rounded-lg font-medium border border-blue-100 dark:border-blue-800">
                {skill}
              </span>
            ))}
          </div>
        </div>

        <div className="bg-white dark:bg-gray-900 border border-gray-200 dark:border-gray-800 rounded-xl p-8 shadow-sm">
          <h2 className="text-2xl font-bold mb-6 text-purple-600 flex items-center gap-2">
            <span>✨</span> Thiết kế & UI/UX
          </h2>
          <div className="flex flex-wrap gap-3">
            {designSkills.map(skill => (
              <span key={skill} className="px-4 py-2 bg-purple-50 dark:bg-purple-900/20 text-purple-700 dark:text-purple-300 rounded-lg font-medium border border-purple-100 dark:border-purple-800">
                {skill}
              </span>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}

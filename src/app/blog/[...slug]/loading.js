export default function BlogDetailLoading() {
  return (
    <div className="max-w-3xl mx-auto px-4 py-12 animate-pulse">
      {/* Back link skeleton */}
      <div className="h-4 w-48 bg-gray-200 dark:bg-gray-800 rounded mb-8"></div>

      {/* Title skeleton */}
      <div className="h-9 w-3/4 bg-gray-200 dark:bg-gray-800 rounded mb-4"></div>

      {/* Author & date skeleton */}
      <div className="flex items-center gap-3 mb-3">
        <div className="h-4 w-28 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-4 bg-gray-200 dark:bg-gray-800 rounded-full"></div>
        <div className="h-4 w-36 bg-gray-200 dark:bg-gray-800 rounded"></div>
      </div>

      {/* Tags skeleton */}
      <div className="flex gap-2 mb-8">
        <div className="h-6 w-16 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-6 w-20 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-6 w-24 bg-gray-200 dark:bg-gray-800 rounded"></div>
      </div>

      {/* Content skeleton */}
      <div className="space-y-4 border-t border-gray-200 dark:border-gray-800 pt-8">
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-5/6 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-4/6 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-8 w-0 bg-transparent"></div>
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-3/4 bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-full bg-gray-200 dark:bg-gray-800 rounded"></div>
        <div className="h-4 w-2/3 bg-gray-200 dark:bg-gray-800 rounded"></div>
      </div>
    </div>
  );
}

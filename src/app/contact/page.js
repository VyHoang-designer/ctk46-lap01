export const metadata = {
  title: 'Liên hệ',
  description: 'Thông tin liên hệ',
};

export default function Contact() {
  return (
    <div className="min-h-screen p-8 sm:p-20 font-[family-name:var(--font-geist-sans)] max-w-3xl mx-auto">
      <h1 className="text-3xl font-bold mb-6">Liên hệ</h1>
      
      <p className="mb-8">
        Bạn có dự án hoặc cơ hội hợp tác nào không? Hãy để lại thông tin hoặc liên hệ trực tiếp với tôi qua các kênh dưới đây.
      </p>
      
      <div className="space-y-4 mb-8">
        <p><strong>Email:</strong> vyhoang-designer@example.com</p>
        <p><strong>LinkedIn:</strong> linkedin.com/in/vyhoang-designer</p>
        <p><strong>GitHub:</strong> github.com/VyHoang-designer</p>
      </div>

      <form className="flex flex-col gap-4">
        <div>
          <label htmlFor="name" className="block text-sm font-medium mb-1">Họ tên</label>
          <input type="text" id="name" className="w-full border border-gray-300 dark:border-gray-700 rounded-md p-2 bg-transparent" placeholder="Nguyễn Văn A" />
        </div>
        
        <div>
          <label htmlFor="email" className="block text-sm font-medium mb-1">Email</label>
          <input type="email" id="email" className="w-full border border-gray-300 dark:border-gray-700 rounded-md p-2 bg-transparent" placeholder="email@example.com" />
        </div>
        
        <div>
          <label htmlFor="message" className="block text-sm font-medium mb-1">Tin nhắn</label>
          <textarea id="message" rows="4" className="w-full border border-gray-300 dark:border-gray-700 rounded-md p-2 bg-transparent" placeholder="Nội dung tin nhắn..."></textarea>
        </div>
        
        <button type="button" className="bg-blue-600 text-white font-semibold py-2 px-4 rounded-md hover:bg-blue-700 transition">
          Gửi tin nhắn
        </button>
      </form>
    </div>
  );
}

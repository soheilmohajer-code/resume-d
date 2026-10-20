نسخه دامنه (soheilmohajer.ir)
==============================

این پوشه همان نسخه‌ای است که مسیرهایش برای دامنه اختصاصی (ریشه سایت) ساخته شده
و فایل CNAME داخلش مقدار soheilmohajer.ir را دارد.

مراحل انتشار:
1. یک ریپازیتوری جدید در گیت‌هاب بساز (مثلاً resume-domain).
2. در همین پوشه:
   git init
   git add -A
   git commit -m "resume with custom domain"
   git branch -M main
   git remote add origin https://github.com/USERNAME/REPO.git
   git push -u origin main
3. در Settings > Pages روی شاخه main و پوشه / (root) تنظیم کن.
4. در Settings > Pages > Custom domain مقدار soheilmohajer.ir را وارد کن.

نکته: پیش‌نیاز کار کردن دامنه، تنظیم رکوردهای DNS در پنل دامنه است:
   A  @    185.199.108.153
   A  @    185.199.109.153
   A  @    185.199.110.153
   A  @    185.199.111.153
   CNAME  www  soheilmohajer-code.github.io

نسخه بدون دامنه که الان روی گیت‌هاب فعال است:
https://soheilmohajer-code.github.io/resume/
(ریپازیتوری resume، بدون CNAME و با پیشوند /resume در مسیر دارایی‌ها)

توجه: مسیرهای داخل این پوشه با نسخه بدون دامنه تفاوت دارند؛ فایل‌های این دو نسخه را
با هم جابه‌جا نکن.

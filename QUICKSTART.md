# EmotionCheck - Quick Start Guide

## 🚀 Quick Deploy (Choose One)

### ⚡ Fastest: Netlify (Recommended)
```bash
# 1. Install Netlify CLI
npm install -g netlify-cli

# 2. Deploy
netlify deploy --prod --dir=.
```
✅ Done! Your site is live with auto-renewal SSL, CDN, and analytics.

### 🌐 Vercel
```bash
npm i -g vercel
vercel --prod
```

### 📦 GitHub Pages
```bash
git push main  # Auto-deploys if configured
```

### 🐳 Docker (Local or Server)
```bash
docker-compose up -d
# Visit: http://localhost
```

### 💻 Traditional Server (Apache)
```bash
# 1. Upload files to /var/www/emotion-check/
# 2. Enable mods:
sudo a2enmod rewrite deflate headers
# 3. Restart:
sudo systemctl restart apache2
```

## 📋 Pre-Flight Checklist

Before deploying, verify:
- [ ] HTML loads without errors: `npx http-server`
- [ ] Security headers present: [securityheaders.com](https://securityheaders.com)
- [ ] Mobile responsive: Test on phone
- [ ] Lighthouse score: `npm run lighthouse` (target: 85+)
- [ ] No console errors: F12 → Console tab

## 🔍 Testing Locally

```bash
# Start local server
npm start

# Run Lighthouse audit
npm run lighthouse

# Validate HTML
npm run validate

# Check security
npm run security:check
```

## 📊 Monitoring After Launch

### Essential Metrics
- **Page Load Time**: Target < 2s
- **Lighthouse Score**: Target 90+
- **Uptime**: 99.9%+
- **Error Rate**: < 0.1%

### Tools to Set Up
1. **Google Analytics** - User behavior
2. **Sentry** - Error tracking
3. **Vercel/Netlify Analytics** - Built-in
4. **Pingdom/UptimeRobot** - Uptime monitoring

## 🔐 Security (Already Configured)

✅ HTTPS/SSL enforced
✅ Security headers configured
✅ GZIP compression enabled
✅ Content Security Policy active
✅ Service Worker for offline support

## 📁 File Structure

```
emotion-check/
├── chromacheck.html          ← Main app (single file!)
├── README.md                 ← Project docs
├── DEPLOYMENT.md             ← Detailed deployment guide
├── DEPLOYMENT-CHECKLIST.md   ← Pre-launch checklist
├── package.json              ← NPM scripts
├── netlify.toml              ← Netlify config
├── vercel.json               ← Vercel config
├── nginx.conf                ← Nginx config
├── .htaccess                 ← Apache config
├── Dockerfile                ← Docker setup
├── docker-compose.yml        ← Docker Compose
├── robots.txt                ← SEO crawling rules
├── sitemap.xml               ← Sitemap for search engines
└── .github/workflows/        ← CI/CD pipeline
    └── deploy.yml
```

## 🌍 Domain Setup

### DNS Records (If Using Custom Domain)
```
A Record:      emotion-check.com → [IP Address]
CNAME Record:  www → emotion-check.com
```

### SSL Certificate
- **Netlify**: Auto (included)
- **Vercel**: Auto (included)
- **GitHub Pages**: Auto (included)
- **Traditional Server**: Use Let's Encrypt (free)

```bash
# Let's Encrypt (Apache)
sudo apt install certbot python3-certbot-apache
sudo certbot certonly --apache -d emotion-check.com
```

## 🚨 Troubleshooting

### Site Not Loading
```bash
# Check file permissions
chmod -R 755 /var/www/emotion-check

# Check server status
systemctl status nginx  # or apache2

# Check logs
tail -f /var/log/nginx/error.log
```

### Slow Performance
```bash
# Enable gzip compression
# (Already done in .htaccess and nginx.conf)

# Check browser cache
# (Already configured, 1-year for assets)

# Run Lighthouse
npm run lighthouse
```

### SSL Certificate Issues
```bash
# Renew Let's Encrypt
sudo certbot renew --dry-run

# Force renew
sudo certbot certonly --force-renewal -d emotion-check.com
```

## 📞 Support Resources

- **Docs**: Read [DEPLOYMENT.md](DEPLOYMENT.md)
- **Checklist**: Use [DEPLOYMENT-CHECKLIST.md](DEPLOYMENT-CHECKLIST.md)
- **Issues**: File on GitHub
- **Security**: Email security@emotion-check.com

## 🎉 Success!

Once deployed, verify:
1. Visit https://emotion-check.com
2. Add colors and analyze
3. Check browser console (should be clean)
4. Test on mobile device
5. Run Lighthouse audit

**Your EmotionCheck instance is live!** 🚀

---

### Next Steps
- [ ] Set up analytics (Google Analytics)
- [ ] Configure error tracking (Sentry)
- [ ] Set up monitoring (Pingdom)
- [ ] Register domain (optional)
- [ ] Configure CDN (optional)
- [ ] Set up backups (optional)

For detailed information, see [DEPLOYMENT.md](DEPLOYMENT.md)

Happy deploying! 🎨

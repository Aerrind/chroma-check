# EmotionCheck Production Deployment Guide

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ or static hosting platform (Netlify, Vercel, GitHub Pages, etc.)
- Domain name (optional but recommended)
- HTTPS certificate (provided by most hosting platforms)

## 📦 Deployment Options

### Option 1: Netlify (Recommended for simplicity)
```bash
# 1. Install Netlify CLI
npm install -g netlify-cli

# 2. Authenticate
netlify login

# 3. Deploy
netlify deploy --prod --dir=.

# 4. Configure in netlify.toml (optional):
[build]
  publish = "."
  command = "echo 'No build needed'"

[[redirects]]
  from = "/*"
  to = "/"
  status = 200
```

### Option 2: Vercel
```bash
npm i -g vercel
vercel --prod
```

### Option 3: GitHub Pages
```bash
# 1. Create repo: emotion-check
# 2. Push files to main branch
# 3. Go to Settings → Pages
# 4. Set source to "main" branch
# 5. Custom domain (optional)
```

### Option 4: Traditional Web Server (Apache/Nginx)

#### Apache Setup
```bash
# 1. Upload all files to your server
# 2. Ensure .htaccess is in root directory
# 3. Enable mod_rewrite and mod_deflate:
a2enmod rewrite
a2enmod deflate
a2enmod headers

# 4. Restart Apache
systemctl restart apache2
```

#### Nginx Setup
```bash
# Use nginx.conf configuration (see nginx.conf file)
# Upload to /etc/nginx/sites-available/emotion-check
# Link to enabled sites:
sudo ln -s /etc/nginx/sites-available/emotion-check /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
```

## 🔒 Security Configuration

### Environment Setup
1. **Enable HTTPS**: Use Let's Encrypt (free) via Certbot
2. **Security Headers**: Already configured in .htaccess and nginx.conf
3. **CSP Policy**: Content Security Policy headers prevent XSS attacks
4. **CORS**: Restrict API access if needed

### HTTPS Setup (Certbot + Apache)
```bash
# Install Certbot
sudo apt install certbot python3-certbot-apache

# Get certificate
sudo certbot certonly --apache -d emotion-check.com -d www.emotion-check.com

# Auto-renewal
sudo certbot renew --dry-run
```

## 📊 Performance Optimization

All optimizations are already built-in:
- ✅ GZIP compression (configured in .htaccess)
- ✅ Browser caching headers (1 year for assets)
- ✅ Critical CSS inlined
- ✅ Font preconnection
- ✅ Service Worker for offline support
- ✅ No external dependencies (except Google Fonts)

### Current Metrics Target
- Lighthouse Performance: 90+
- Core Web Vitals: All green
- Load time: < 2 seconds

### Monitor Performance
```bash
# Using Google Lighthouse CLI
npm install -g lighthouse
lighthouse https://emotion-check.com --view
```

## 🌍 Domain & DNS Setup

### DNS Records
```
A Record:      emotion-check.com → [Your Server IP]
CNAME Record:  www → emotion-check.com
MX Record:     (if using email)
TXT Record:    v=spf1 include:provider.com ~all (if using email)
```

### SSL Certificate
Most platforms (Netlify, Vercel, GitHub Pages) provide free SSL automatically.

For traditional servers, use Let's Encrypt (free).

## 📈 Analytics & Monitoring

### Add Google Analytics
Edit `chromacheck.html` and add before `</head>`:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### Monitoring Errors
```javascript
// Already configured - logs to console
window.addEventListener('error', (e) => {
  console.error('Global error:', e);
  trackEvent('error', {message: e.message});
});
```

## 🔄 Continuous Deployment

### GitHub Actions (Optional)
Create `.github/workflows/deploy.yml`:
```yaml
name: Deploy
on:
  push:
    branches: [main]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Deploy to Netlify
        uses: nwtgck/actions-netlify@v2
        with:
          publish-dir: '.'
          production-deploy: true
        env:
          NETLIFY_AUTH_TOKEN: ${{ secrets.NETLIFY_AUTH_TOKEN }}
          NETLIFY_SITE_ID: ${{ secrets.NETLIFY_SITE_ID }}
```

## 📝 File Structure for Deployment

```
emotion-check/
├── chromacheck.html          # Main application
├── README.md                 # Documentation
├── .htaccess                 # Apache config
├── nginx.conf                # Nginx config
├── robots.txt                # SEO crawling rules
├── sitemap.xml               # Sitemap for search engines
├── .well-known-security.txt  # Security contact info
└── manifest.json             # PWA manifest (optional separate file)
```

## 🧪 Testing Before Production

```bash
# Test locally with Python
python3 -m http.server 8000

# Test with Node
npx http-server

# Test SSL locally (using mkcert)
mkcert emotion-check.local
# Update hosts file: 127.0.0.1 emotion-check.local
```

## 🚨 Post-Deployment Checklist

- [ ] HTTPS working (test with https://...)
- [ ] Page loads < 3 seconds
- [ ] Lighthouse score > 85
- [ ] Responsive on mobile
- [ ] All links working
- [ ] Analytics tracking
- [ ] Error monitoring configured
- [ ] Security headers present (check with securityheaders.com)
- [ ] SEO (Google Search Console configured)
- [ ] Favicon displaying
- [ ] Meta tags correct (check with metatags.io)

## 📞 Support & Updates

- **Issues**: File bugs in GitHub Issues
- **Contributions**: Submit PRs to the emotion-check repository
- **Updates**: Pull latest changes regularly

---

**Happy deploying! 🚀**

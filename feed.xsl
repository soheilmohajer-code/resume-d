<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/rss">
    <html lang="en">
      <head>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="channel/title"/> — RSS Feed</title>
        <style>
          :root { color-scheme: dark; }
          * { box-sizing: border-box; margin: 0; padding: 0; }
          body {
            background: #05070b; color: #e9eef6; min-height: 100vh;
            font-family: ui-sans-serif, system-ui, "Segoe UI", Tahoma, sans-serif;
            padding: 40px 20px 80px;
          }
          .wrap { max-width: 720px; margin: 0 auto; }
          .mono { font-family: ui-monospace, "Cascadia Code", "SF Mono", Consolas, monospace; }
          .crumb { color: #94a1b5; font-size: 12px; letter-spacing: .12em; }
          .crumb b { color: #43ffb4; }
          h1 { font-size: 34px; font-weight: 900; margin-top: 12px; letter-spacing: -.02em; }
          .desc { color: #94a1b5; margin-top: 12px; line-height: 1.7; font-size: 14px; }
          .hint {
            margin-top: 24px; padding: 16px 18px; border: 1px dashed rgba(67,255,180,.4);
            border-radius: 14px; background: rgba(67,255,180,.05); font-size: 13px; line-height: 1.8;
          }
          .hint b { color: #43ffb4; }
          .hint code { color: #43ffb4; font-size: 12px; }
          .feed-url {
            display: block; margin-top: 10px; padding: 10px 14px; border-radius: 10px;
            background: rgba(67,255,180,.08); border: 1px solid rgba(67,255,180,.25);
            color: #43ffb4; font-size: 12px; word-break: break-all;
          }
          .count { color: #94a1b5; font-size: 12px; letter-spacing: .1em; margin-top: 40px; }
          .item {
            display: block; text-decoration: none; margin-top: 14px; padding: 18px 20px;
            border: 1px solid #1b2334; border-radius: 14px; background: rgba(14,21,34,.7);
            transition: border-color .2s, transform .2s;
          }
          .item:hover { border-color: rgba(67,255,180,.4); transform: translateY(-2px); }
          .item h3 { font-size: 16px; font-weight: 700; color: #e9eef6; }
          .item:hover h3 { color: #43ffb4; }
          .item p { color: #94a1b5; font-size: 13px; margin-top: 8px; line-height: 1.7; }
          .meta { display: flex; flex-wrap: wrap; gap: 6px 16px; margin-top: 12px; color: #94a1b5; font-size: 11px; }
          .meta .date { color: #94a1b5; }
          .tag {
            border: 1px solid rgba(67,255,180,.25); background: rgba(67,255,180,.08);
            color: #43ffb4; border-radius: 6px; padding: 1px 8px; font-size: 10px; letter-spacing: .05em;
          }
          .footer { margin-top: 48px; text-align: center; color: #94a1b5; font-size: 11px; letter-spacing: .14em; }
        </style>
      </head>
      <body>
        <div class="wrap">
          <p class="crumb mono"><b>❯ ~/blog</b> — feed.xml</p>
          <h1><xsl:value-of select="channel/title"/></h1>
          <p class="desc"><xsl:value-of select="channel/description"/></p>

          <div class="hint">
            <b>📡 This is the RSS feed of the blog.</b><br/>
            Browsers show it as raw XML — it is meant for <b>feed readers</b>
            (Feedly, Inoreader, NetNewsWire…). Copy the URL below into your
            reader to get every new post automatically:
            <span class="feed-url mono"><xsl:value-of select="channel/atom:link/@href"/></span>
          </div>

          <p class="count mono">POSTS.IN_FEED — <xsl:value-of select="count(channel/item)"/> loaded</p>

          <xsl:for-each select="channel/item">
            <a class="item" href="{link}">
              <h3><xsl:value-of select="title"/></h3>
              <p><xsl:value-of select="description"/></p>
              <div class="meta mono">
                <span class="date"><xsl:value-of select="pubDate"/></span>
                <xsl:for-each select="category">
                  <span class="tag"><xsl:value-of select="."/></span>
                </xsl:for-each>
              </div>
            </a>
          </xsl:for-each>

          <p class="footer mono">SOHEILMOHAJER.IR — RSS.SYS // STYLED VIEW</p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

# Fix checkout.html by removing duplicate content
with open('checkout.html', 'r', encoding='utf-8') as f:
    lines = f.readlines()

# Keep only the first 1321 lines (up to </body>)
fixed_lines = lines[:1321]

# Add closing </html> tag
fixed_lines.append('</html>\n')

# Write the fixed content
with open('checkout.html', 'w', encoding='utf-8') as f:
    f.writelines(fixed_lines)

print("Fixed! File now has", len(fixed_lines), "lines")

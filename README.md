# Nginx Log Analyzer

This project provides a Bash script to analyze Nginx access logs. The script extracts and displays the top 5 entries for IP addresses, requested paths, response status codes, and user agents.

## Requirements
- Bash
- Nginx access log file with fields: IP address, Date and time, Request method/path, Status code, Response size, Referrer, User agent.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/nginx-log-analyzer.git
   cd nginx-log-analyzer

2. Make the script executable:
   ```bash
   chmod +x nginx_log_analyzer.sh

3. Run the script with the path to your log file:
   ```bash
   ./nginx_log_analyzer.sh /path/to/nginx-access.log

4. The script will output:
- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

Project URL: https://roadmap.sh/projects/nginx-log-analyser

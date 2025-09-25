# Belio API Documentation

This repository contains the official API documentation for **Belio**, a comprehensive communication platform that provides messaging services and business communication solutions. The documentation is built using Mintlify and offers developers complete guidance for integrating with the Belio REST API.

## 🚀 About Belio API

Belio's REST API enables developers to:

- Send SMS messages to single or multiple recipients
- Manage messaging services and configurations
- Track message delivery status with real-time receipts
- Secure API access with OAuth 2.0 Bearer token authentication
- Monitor and manage communication workflows

**Base URL**: `https://api.belio.co.ke`

## 🛠 Development

### Prerequisites

- Node.js and npm installed
- Mintlify CLI for local development

### Setup

1. Install the Mintlify CLI:

```bash
npm i -g mintlify
```

2. Run the documentation locally:

```bash
mintlify dev
```

3. The documentation will be available at `http://localhost:3000`

### Troubleshooting

- **Mintlify dev isn't running**: Run `mintlify install` to reinstall dependencies
- **Page loads as 404**: Ensure you're running the command in the folder containing `docs.json`
- **Authentication issues**: Verify your API credentials and scopes in the dashboard

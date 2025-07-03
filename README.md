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

## 📚 Documentation Structure

### Authentication
- **Introduction**: Overview of Bearer token authentication system
- **Bearer Token**: OAuth 2.0 client credentials flow for obtaining access tokens
- **Security Features**: IP whitelisting, authorization scopes, and web origins control

### Services
- **List Services**: Retrieve available messaging services for your account
- Service management and configuration

### Messaging
- **Send Messages**: Send SMS to individual or bulk recipients
- **Delivery Receipts**: Real-time message delivery tracking and status updates
- **Message Management**: Monitor and manage message workflows

## 🔐 Authentication & Security

The API uses OAuth 2.0 Bearer token authentication with advanced security features:

### Authorization Scopes
- `mobilize.sms.send.oneway`: Send one-way SMS messages
- `mobilize.service.list`: List and retrieve services

### Security Features
- **IP Whitelisting**: Restrict API access to specific IP addresses
- **Web Origins**: Control which domains can make API requests
- **Scope-based Access**: Fine-grained permissions for different API operations

## 📡 API Endpoints

| Endpoint | Method | Description | Required Scope |
|----------|--------|-------------|----------------|
| `/realms/api/protocol/openid-connect/token` | POST | Obtain Bearer token | None |
| `/service` | GET | List available services | `mobilize.service.list` |
| `/message/{serviceId}` | POST | Send messages | `mobilize.sms.send.oneway` |

## 🔔 Delivery Receipts

The API supports real-time delivery tracking through webhook callbacks:

- **Correlator-based tracking**: Unique identifiers for message correlation
- **Status monitoring**: Track messages from sending to final delivery
- **Webhook integration**: Receive delivery updates at your specified callback URL

### Delivery Status Values
- `Waiting`, `Delivered`, `DeliveryUncertain`, `DeliveryImpossible`
- `SenderBlacklisted`, `InsufficientFunds`, `InvalidLinkId`
- `SubscriberOptedOut`, `AbsentSubscriber`, `InvalidMsisdn`, `Failed`

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

### Project Structure
```
api-docs/
├── docs.json                 # Mintlify configuration
├── openapi.json             # OpenAPI 3.1.0 specification
├── overview.mdx             # API overview and getting started
├── authentication/
│   ├── introduction.mdx     # Authentication overview
│   └── bearer-token.mdx     # Bearer token endpoint
├── service/
│   └── list.mdx            # List services endpoint
├── message/
│   ├── introduction.mdx     # Messaging overview
│   ├── send.mdx            # Send message endpoint
│   └── delivery-receipt.mdx # Delivery receipt webhooks
└── logo/                   # Belio brand assets
```

## 🔗 Quick Links

- **Belio Website**: [https://belio.co.ke](https://belio.co.ke)
- **Dashboard**: [https://cloud.belio.co.ke](https://cloud.belio.co.ke)
- **API Access Keys**: [API Client Management](https://cloud.belio.co.ke/team-overview/api-access-keys)
- **Services Management**: [Services Dashboard](https://cloud.belio.co.ke/services)
- **Support**: [info@belio.co.ke](mailto:info@belio.co.ke)

## 🚀 Getting Started

1. **Request API Access**: Visit the [API Access Keys page](https://cloud.belio.co.ke/team-overview/api-access-keys) to obtain your `client_id` and `client_secret`
2. **Create a Service**: Set up a messaging service on the [Services page](https://cloud.belio.co.ke/services)
3. **Obtain Bearer Token**: Use the authentication endpoint to get your access token
4. **Send Your First Message**: Use the messaging endpoint to send SMS
5. **Monitor Delivery**: Set up webhooks to receive delivery receipts

### Troubleshooting

- **Mintlify dev isn't running**: Run `mintlify install` to reinstall dependencies
- **Page loads as 404**: Ensure you're running the command in the folder containing `docs.json`
- **Authentication issues**: Verify your API credentials and scopes in the dashboard

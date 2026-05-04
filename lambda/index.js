const { SecretsManagerClient, GetSecretValueCommand } = require("@aws-sdk/client-secrets-manager");

const client = new SecretsManagerClient({ region: "us-east-1" });

exports.handler = async (event) => {
    const secretName = process.env.SECRET_NAME;

    try {
        const response = await client.send(
            new GetSecretValueCommand({
                SecretId: secretName,
                VersionStage: "AWSCURRENT",
            })
        );

        const secrets = JSON.parse(response.SecretString);

        console.log("Secreto obtenido con éxito");


        return {
            statusCode: 200,
            body: JSON.stringify({
                message: "Acceso al secreto concedido",
                data: secrets
            }),
        };

    } catch (error) {
        console.error("Error obteniendo el secreto:", error);
        throw error;
    }
};
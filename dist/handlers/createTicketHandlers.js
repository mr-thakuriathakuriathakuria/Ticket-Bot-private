// src/handlers/createTicketHandlers.ts
import { showUniversalTicketModal } from '../modals/universalTicketModal.js';
export async function handleCreateGeneralTicket(interaction, client) {
    await showUniversalTicketModal(interaction, 'General');
}

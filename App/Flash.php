<?php

namespace App;

/**
 * Flash notification messages
 *
 */
class Flash
{

    const SUCCESS = 'success';
    const INFO = 'info';
    const WARNING = 'warning';

    /**
     * Add a message
     *
     * @param string $message  The message content
     * @param string $type  The optional message type, defaults to SUCCESS
     *
     * @return void
     */
    public static function addMessage($message, $type = 'success')
    {
        if (! isset($_SESSION['flash_notifications'])) {
            $_SESSION['flash_notifications'] = [];
        }

        $_SESSION['flash_notifications'][] = [
            'body' => $message,
            'type' => $type
        ];
    }

    /**
     * Get all the messages
     *
     * @return mixed An array with all the messages or null if none set
     */
    public static function getMessages()
    {
        if (isset($_SESSION['flash_notifications'])) {
            $messages = $_SESSION['flash_notifications'];
            unset($_SESSION['flash_notifications']);

            return $messages;
        }
    }
}
